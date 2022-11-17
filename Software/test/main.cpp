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

/* VARIABLES */
Display *d;
Window win;
Atom closeMessage;
XEvent event;

int main() {
    cout << "Start of main." << endl;

    // set up gpio
    wiringPiSetup();    // Setup the library
    pinMode(21, INPUT);	// Configure GPIO as an input
    pinMode(22, INPUT);	
    pinMode(23, INPUT);	
    pinMode(24, INPUT);	
    wiringPiISR(21, INT_EDGE_FALLING, /*function name*/); // set interrupt functions 
    wiringPiISR(22, INT_EDGE_FALLING, /*function name*/);
    wiringPiISR(23, INT_EDGE_FALLING, /*function name*/);
    wiringPiISR(23, INT_EDGE_FALLING, /*function name*/);

    // set up com port 
    ofstream comport;
    comport.open("/dev/ttyUSB0", std::ios::out);

    // create the keylogger
    Keylogger *logger = new Keylogger();

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
    string runningInput;

    while (!done) { // loop until fully trained, or gui is done
        XNextEvent(d, &event);
        lastTime = time;
        time = (duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count() - start) / 1000.0f; // get keystroke time
        switch (event.type) {
            case KeyPress: {
                received = XLookupKeysym(&event.xkey, 0);

                if(received == BACKSPACE && runningInput.length() != 0) {
                    runningInput.pop_back();
                    comport << (char) 0x7f;
                    comport.flush();
                    cout.flush();
                    cout << "\b \b"; // remove the character from the console
                    cout.flush();
                    continue;
                } else if(received == L_SHIFT || received == R_SHIFT) { // handle shift
                    upper = true;
                    break;
                } else if (received == ENTER) {
                    cout << endl; // built-in flush
                    comport << "\r";
                    comport.flush();
                    break;
                } else if (received == CAPS) {
                    upper = !upper;
                    break;
                } else if (received == BACKSPACE) {
                    comport << (char) 0x7f;
                    comport.flush();
                    break;
                } else if(received == ENTER || received == BACKSPACE) { // intercept and ignore
                    break;
                }

                if(upper) receivedChar = toupper(char(received)); // get the character 
                else receivedChar = char(received);
                runningInput += receivedChar; // add the input key to the runningInput
                cout << receivedChar;
                cout.flush();
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
                    if(runningInput == logger->getCurrentProfile()->getPassword()) { // if the password has been entered
                        // do mode actions
                        // update lcd 
                        logger->clearKeypresses();
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

    // closeout
    XDestroyWindow(d, win);
    XCloseDisplay(d);
    delete logger;

    cout << endl << "End of main" << endl;
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