// run X11 window at all times
// track input
// send input to computer, when enabled 
// have runningInput of length of current password
// when runningInput matches, enter mode enum switch
// mode enum set by interrupts
// run test/auth based on mode enum 
// clear input 
// repeat

/* Project: Clarkson University Capstone
   Writer(s): Aaron R. Jones
   Last Edited: 11/15/2022
   Purpose: This file tests the use of a real keyboard for input to the system, 
            including profile creation, training, and testing.  Utilizes keylogger.cpp.
            Utilizes interrupt-based raspberry pi buttons
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

/* VARIABLES */
Display *d;
Window win;
Atom closeMessage;
XEvent event;
int numAllowed = 0;
int numTries = 0;
int numEntries = 0;
vector<float> scores;
Keylogger *logger;
bool keyboardEnable = true;
bool deleteActive = false;
bool createActiveName = false, createActivePassword = false;
string newName;
string newPassword;
string runningInput;
ofstream comport;

int main() {
    cout << "Start of main." << endl;

    // set up gpio
    wiringPiSetup();    // Setup the library
    pinMode(21, INPUT);	// Configure GPIO as an input
    pinMode(22, INPUT);	
    pinMode(23, INPUT);	
    pinMode(24, INPUT);	
    wiringPiISR(21, INT_EDGE_FALLING, btn0); // set interrupt functions 
    wiringPiISR(22, INT_EDGE_FALLING, btn1);
    wiringPiISR(23, INT_EDGE_FALLING, btn2);
    wiringPiISR(24, INT_EDGE_FALLING, btn3);

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
        XNextEvent(d, &event);
        lastTime = time;
        time = (duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count() - start) / 1000.0f; // get keystroke time
        switch (event.type) {
            case KeyPress: {
                received = XLookupKeysym(&event.xkey, 0);

                if(received == BACKSPACE && runningInput.length() != 0) {
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
                } else if (received == ENTER) {
                    cout << endl; // built-in flush
                    if(keyboardEnable) writeToCom('\r');
                    break;
                } else if (received == CAPS) {
                    upper = !upper;
                    break;
                } else if (received == BACKSPACE) {
                    if(keyboardEnable) writeToCom((char) 0x7f);
                    break;
                } else if (upper && received >= 48 && received <= 57) {
                    receivedChar = intToSpecial(received);
                } else {
                    if(upper) receivedChar = toupper(char(received)); // get the character 
                    else receivedChar = char(received);
                }

                if(keyboardEnable) writeToCom(receivedChar);
                runningInput += receivedChar; // add the input key to the runningInput
                cout << receivedChar;
                cout.flush();
                if(createActiveName || createActivePassword) logger->updateLcdText(BOTTOM, runningInput);
                k = new Keypress((float) time, KEY_PRESSED, receivedChar);
                logger->appendKeypress(k);
                break;
            } case KeyRelease: {
                if (was_it_auto_repeat(d, &event, KeyRelease, KeyPress)) {
                    XNextEvent(d, &event); /* Consume the extra event so we can ignore it. */
                } else {
                    received = XLookupKeysym(&event.xkey, 0);
                    if(received == BACKSPACE) {
                        break;
                    } else if(received == L_SHIFT || received == R_SHIFT) { // handle shift
                        upper = false;
                        break;
                    } else if(received == ENTER) {
                        break;
                    }

                    if(upper) receivedChar = toupper(char(received)); // get the character 
                    else receivedChar = char(received);

                    k = new Keypress((float) time, KEY_RELEASED, receivedChar);
                    logger->appendKeypress(k);
                    if(runningInput == logger->getCurrentProfile()->getPassword() && !createActivePassword && !createActiveName) { // if the password has been entered
                        // do mode actions
                        runModes(logger->getCurrentMode());
                        // update lcd 
                        // logger->clearKeypresses();
                        runningInput = "";
                    }
                }
                break;
            } case ClientMessage: {
                if ((Atom)event.xclient.data.l[0] == closeMessage) {
                    done = true;
                }
                break;
            }
        }
    }

    // give stats
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
void btn0() {
    keyboardEnable = true;
}

void btn1() {
    if(logger->getCurrentMode() == FixedTrain && numEntries != 0) {
        logger->runTrain();
        numEntries = 0;
    }
    logger->nextMode();
}

void btn2() { 
    logger->nextProfile();
}

void btn3() {
    if(deleteActive) {
        logger->removeCurrentProfile();
        logger->updateLcdText(TOP, logger->getModeAsString());
        logger->updateLcdText(BOTTOM, logger->getCurrentProfile()->getName());
        cout << "Profile deleted." << endl;
        deleteActive = false;
        return;
    }
    if(createActiveName) {
        newName = runningInput;
        logger->updateLcdText(TOP, "Enter a Password");
        logger->updateLcdText(BOTTOM, "");
        runningInput = "";
        createActiveName = false;
        createActivePassword = true;
        return;
    }
    if(createActivePassword) {
        newPassword = runningInput;
        logger->clearKeypresses();
        runningInput = "";
        logger->addProfile(new Profile(newName, Fixed, new FixedModelData(newPassword)));
        logger->updateLcdText(TOP, logger->getModeAsString());
        logger->updateLcdText(BOTTOM, logger->getCurrentProfile()->getName());
        cout << *logger->getCurrentProfile() << endl;
        createActivePassword = false;
    }
    if(logger->getCurrentProfile()->getName() == "Delete Profile") {
        deleteActive = true;
        logger->updateLcdText(TOP, "Select to Delete");
        logger->setCurrentProfile(0);
        logger->updateLcdText(BOTTOM, logger->getCurrentProfile()->getName());
        return;
    }
    if(logger->getCurrentProfile()->getName() == "Create Profile") {
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
        case Disable: break;
        case FixedTrain:
            sleep_for(milliseconds(500)); // sleep for .5 seconds, forcing a large digraph time
            cout << endl << "Password entered: " << runningInput << " Entry " << ++numEntries << endl;
            logger->updateLcdText(TOP, logger->getModeAsString() + " " + to_string(numEntries));
            runningInput = "";
            break;
        case FixedTest:
            numTries++;
            float score = logger->runAuth();
            float threshold = logger->getCurrentThreshold();
            scores.push_back(score);

            cout << ", Score: " << score;
            if(score <= threshold) {
                numAllowed++;
                cout << ", Entry allowed" << endl;
            } else {
                keyboardEnable = false;
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

// create a window
void createWindow() {
    d = XOpenDisplay(NULL);
    win = XCreateSimpleWindow(d, RootWindow(d, 0), 1, 1, 400, 300, 0, BlackPixel(d, 0), BlackPixel(d, 0));
    XSelectInput(d, win, KeyPressMask | KeyReleaseMask | ClientMessage);
    XMapWindow(d, win);
    XFlush(d);
    closeMessage = XInternAtom(d, "WM_DELETE_WINDOW", True);
    XSetWMProtocols(d, win, &closeMessage, 1);
}

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

void writeToCom(char toWrite) {
    comport << toWrite;
    comport.flush();
}