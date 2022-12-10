/* Project: Clarkson University Capstone
   Writer(s): Aaron R. Jones
   Last Edited: 12/10/2022
   Purpose: This file tests the use of a real keyboard for input to the system, 
            including profile creation, training, and testing.  Utilizes keylogger.cpp.
            Utilizes interrupt-based raspberry pi buttons.
            Run this file for the Raspberry Pi
   Adapted From: https://blog.robertelder.org/detect-keyup-event-linux-terminal/
*/

/* INCLUDES */
#include <wiringPi.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xos.h>
#include <X11/Xatom.h>
#include <X11/keysym.h>
#include "keylogger.hpp"

/* NAMESPACE */
using std::cout;
using std::endl;

/* FUNCTIONS */
bool was_it_auto_repeat(Display *d, XEvent *event, int current_type, int next_type); // checks is a keypress in the global window was held down
void createWindow(); // creates a X11 window for keypress receipt, requires global vars
static char intToSpecial(long received); // converts a long from the keyboard into a special character
void runModes(Modes currentMode); // determines which algorithms to run
void writeToCom(char toWrite); // sends a keypress to the host 

void btn0(); // button 0 interrupt 
void btn1(); // button 1 interrupt
void btn2(); // button 2 interrupt
void btn3(); // button 3 interrupt 

/* X11 VARIABLES */
Display *d;
Window win;
Atom closeMessage;
XEvent event;

/* INPUT TRACKING VARIABLES */
int numAllowed = 0;
int numTries = 0;
int numEntries = 0;
bool keyboardEnable = true;
bool deleteActive = false;
bool createActiveName = false, createActivePassword = false;
string newName;
string newPassword;
string runningInput;
ofstream comport;

/* KEYLOGGER VARIABLES */
vector<float> scores;
Keylogger *logger;

/* MAIN */
int main() {
    cout << "Start of main." << endl;

    // set up gpio buttons
    wiringPiSetup();    // Setup the library
    pinMode(21, INPUT);	// Configure GPIO as an input
    pinMode(22, INPUT);	
    pinMode(23, INPUT);	
    pinMode(24, INPUT);	
    wiringPiISR(21, INT_EDGE_FALLING, btn0); // set interrupt functions 
    wiringPiISR(22, INT_EDGE_FALLING, btn1);
    wiringPiISR(23, INT_EDGE_FALLING, btn2);
    wiringPiISR(24, INT_EDGE_FALLING, btn3);

    // set up LED
    pinMode(25, OUTPUT);
    digitalWrite(25, 0); // led is off

    // set up com port 
    comport.open("/dev/ttyUSB0", std::ios::out);

    // create the keylogger
    logger = new Keylogger();

    // create the X11 window
    bool done = false;
    createWindow();

    // set up keypress tracking 
    double lastTime, time = 0, start;
    start = duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count();
    long received;
    char receivedChar;
    bool upper = false;
    Keypress *k;
    
    // set up runningInput
    runningInput = "";

    while (!done) { // loop until fully trained, or gui is done
        XNextEvent(d, &event); // event listener on the X11 window
        lastTime = time;
        time = (duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count() - start) / 1000.0f; // get keystroke time
        switch (event.type) {
            case KeyPress: { // if the key was pressed
                received = XLookupKeysym(&event.xkey, 0); // get the char pressed

                if(received == BACKSPACE && runningInput.length() != 0) { // handle backspace
                    runningInput.pop_back();
                    if(keyboardEnable) writeToCom((char) 0x7f);
                    if(createActiveName || createActivePassword) logger->updateLcdText(BOTTOM, runningInput);
                    cout.flush();
                    cout << "\b \b"; // remove the character from the console
                    cout.flush();
                    continue;
                } else if(received == L_SHIFT || received == R_SHIFT) { // handle shift
                    upper = true;
                    break;
                } else if (received == ENTER) { // handle enter
                    cout << endl; // built-in flush
                    if(keyboardEnable) writeToCom('\r');
                    runningInput = "";
                    break;
                } else if (received == CAPS) { // handle caps lock
                    upper = !upper;
                    break;
                } else if (received == BACKSPACE) { // handle backspace when console has nothing to delete, but host pc does
                    if(keyboardEnable) writeToCom((char) 0x7f);
                    break;
                } else if (upper && received >= 48 && received <= 57) { // handle special characters 
                    receivedChar = intToSpecial(received);
                } else {
                    if(upper) receivedChar = toupper(char(received)); // get the character 
                    else receivedChar = char(received);
                }

                if(keyboardEnable) writeToCom(receivedChar); // send char to host if enabled
                if(runningInput.length() == logger->getCurrentProfile()->getPassword().length() && runningInput.length() != 0 && logger->getCurrentMode() == FixedTest && !deleteActive && !createActiveName && !createActivePassword) 
                    runningInput = runningInput.substr(1, runningInput.length()); //remove first character when overflowing 
                runningInput += receivedChar; // add the input key to the runningInput
                cout << receivedChar; // print to console for cleanliness
                cout.flush();
                if(createActiveName || createActivePassword) logger->updateLcdText(BOTTOM, runningInput); // update lcd if creating a profile
                k = new Keypress((float) time, KEY_PRESSED, receivedChar); // save the keypress
                logger->appendKeypress(k);
                break;
            } case KeyRelease: { // if upstroke
                if (was_it_auto_repeat(d, &event, KeyRelease, KeyPress)) {
                    XNextEvent(d, &event); /* Consume the extra event so we can ignore it. */
                } else {
                    received = XLookupKeysym(&event.xkey, 0); // get the X11 code
                    if(received == BACKSPACE) { // handle special (generally ignore when upstrokes )
                        break;
                    } else if(received == L_SHIFT || received == R_SHIFT) { // handle shift
                        upper = false;
                        break;
                    } else if(received == ENTER) { // handle enter 
                        break;
                    }

                    if(upper) receivedChar = toupper(char(received)); // get the character 
                    else receivedChar = char(received);

                    k = new Keypress((float) time, KEY_RELEASED, receivedChar);
                    logger->appendKeypress(k);
                    if(runningInput == logger->getCurrentProfile()->getPassword() && !createActivePassword && !createActiveName) { // if the password has been entered
                        runModes(logger->getCurrentMode()); // do mode actions on upstrokes only 
                        runningInput = ""; // reset running input after modes are run 
                    }
                }
                break;
            } case ClientMessage: { // handle close of X11 window (exit program)
                if ((Atom)event.xclient.data.l[0] == closeMessage) {
                    done = true;
                }
                break;
            }
        }
    }

    // give stats
    cout << "runningInput is: " << runningInput << endl << endl;
    cout << "Allowed " << numAllowed << " of " << numTries << " attempts. Percentage allowed: " << round(((double) numAllowed) / numTries * 1000) / 10.0 << "%" << endl;
    cout << "Average score: " << accumulate(scores.begin(), scores.end(), 0.0f) / scores.size() << endl;

    // closeout
    XDestroyWindow(d, win);
    XCloseDisplay(d);
    delete logger;

    comport.close();

    cout << endl << "End of main" << endl;
}

// handle button interrupts
// BTN0: Re-enable computer-keyboard interface (and turn off LED)
void btn0() {
    keyboardEnable = true;
    digitalWrite(25, 0); // led is off
}

// BTN1: Go to the next system mode.  If leaving the Train mode, compute trained graphs and save all profiles.
void btn1() {
    if(logger->getCurrentMode() == FixedTrain && numEntries != 0) {
        logger->runTrain();
        logger->saveAllProfiles();
        numEntries = 0;
    }
    runningInput = "";
    logger->nextMode();
}

// BTN2: Go to the next profile.  Clear running input/keypresses
void btn2() { 
    logger->nextProfile();
    logger->clearKeypresses();
    runningInput = "";
}

// BTN3: Select button for create/delete profile.  Utilizes global booleans for states
// TODO: make this work with enum
void btn3() {
    if(deleteActive) { // if we're deleting a profile, delete the one currently displayed on the LCD 
        logger->removeCurrentProfile();
        logger->updateLcdText(TOP, logger->getModeAsString());
        logger->updateLcdText(BOTTOM, logger->getCurrentProfile()->getName());
        cout << "Profile deleted." << endl;
        deleteActive = false;
        return;
    }
    if(createActiveName) { // if we're creating a profile, and have entered the name 
        newName = runningInput;
        logger->updateLcdText(TOP, "Enter a Password");
        logger->updateLcdText(BOTTOM, "");
        runningInput = "";
        createActiveName = false;
        createActivePassword = true;
        return;
    }
    if(createActivePassword) { // if we're creating a profile, and have entered the password
        newPassword = runningInput;
        logger->clearKeypresses();
        runningInput = "";
        logger->addProfile(new Profile(newName, Fixed, new FixedModelData(newPassword)));
        logger->updateLcdText(TOP, logger->getModeAsString());
        logger->updateLcdText(BOTTOM, logger->getCurrentProfile()->getName());
        cout << *logger->getCurrentProfile() << endl;
        createActivePassword = false;
    }
    if(logger->getCurrentProfile()->getName() == "Delete Profile") { // if we decide to delete a profile
        deleteActive = true;
        logger->updateLcdText(TOP, "Select to Delete");
        logger->setCurrentProfile(0);
        logger->updateLcdText(BOTTOM, logger->getCurrentProfile()->getName());
        return;
    }
    if(logger->getCurrentProfile()->getName() == "Create Profile") { // if we want to create a profile 
        logger->updateLcdText(TOP, "Enter a name");
        logger->updateLcdText(BOTTOM, "");
        createActiveName = true;
        runningInput = "";
        return;
    }
}

// run modes
void runModes(Modes currentMode) {
    switch(currentMode) { 
        case Disable: break; // do nothing if disabled--this shouldn't be called anyway
        case FixedTrain: // if we're training, update lcd text.  Train algorithm is run at the end 
            sleep_for(milliseconds(500)); // sleep for .5 seconds, forcing a large digraph time
            cout << endl << "Password entered: " << runningInput << " Entry " << ++numEntries << endl;
            logger->updateLcdText(TOP, logger->getModeAsString() + " " + to_string(numEntries));
            runningInput = "";
            break;
        case FixedTest: // if we're authenticating, and have entered the password.  Calculate the score, make authentication decision.  
            numTries++;
            float score = logger->runAuth(); // calculate score
            float threshold = logger->getCurrentThreshold(); // get the threshold 
            scores.push_back(score); // log the score for stats on shutdown

            cout << ", Score: " << score; // print the score (debugging)
            if(score <= threshold) { // make keyboard-computer interface decision
                numAllowed++;
                cout << ", Entry allowed" << endl;
            } else { // cut off the keyboard-computer interface 
                keyboardEnable = false;
                digitalWrite(25, 1); // led is on
                cout << ", Entry denied" << endl;
            }
            break;
    }
}

// detection of held keys
bool was_it_auto_repeat(Display *d, XEvent *event, int current_type, int next_type) {
    /*  Holding down a key will cause 'autorepeat' to send fake keyup/keydown events, but we want to ignore these: '*/
    if (event->type == current_type && XEventsQueued(d, QueuedAfterReading)) {
        XEvent nev;
        XPeekEvent(d, &nev);
        return (nev.type == next_type && nev.xkey.time == event->xkey.time && nev.xkey.keycode == event->xkey.keycode);
    }
    return false;
}

// create X11 window
void createWindow() {
    d = XOpenDisplay(NULL);
    win = XCreateSimpleWindow(d, RootWindow(d, 0), 1, 1, 400, 300, 0, BlackPixel(d, 0), BlackPixel(d, 0));
    XSelectInput(d, win, KeyPressMask | KeyReleaseMask | ClientMessage);
    XMapWindow(d, win);
    XFlush(d);
    closeMessage = XInternAtom(d, "WM_DELETE_WINDOW", True);
    XSetWMProtocols(d, win, &closeMessage, 1);
}

// convert X11 codes to char for select special characters 
char intToSpecial(long received) {
    switch(received) {
        case 48: return ')';
        case 49: return '!';
        case 50: return '@';
        case 51: return '#';
        case 52: return '$';
        case 53: return '%';
        case 54: return '^';
        case 55: return '&';
        case 56: return '*';
        case 57: return '(';
    }
    return ' ';
}

// write and flush to the comport
void writeToCom(char toWrite) {
    comport << toWrite;
    comport.flush();
}