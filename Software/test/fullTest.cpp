/* Project: Clarkson University Capstone
   Writer(s): Aaron R. Jones
   Last Edited: 10/30/2022
   Purpose: This file tests the use of a real keyboard for input to the system, 
            including profile creation, training, and testing.
   Adapted From: https://blog.robertelder.org/detect-keyup-event-linux-terminal/
*/

/* INCLUDES */
#include "profile.hpp"
#include "modelType.hpp"
#include "fixedModelData.hpp"

#include <chrono>
#include <string>
#include <stdlib.h>
#include <unistd.h>
#include <iostream>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xos.h>
#include <X11/Xatom.h>
#include <X11/keysym.h>

/* NAMESPACE */
using std::cin;
using std::cout;
using std::endl;
using std::chrono::milliseconds;
using std::chrono::system_clock;
using std::chrono::duration_cast;

/* FUNCTIONS */
void saveProfile(Profile* p) {
    string input;
    
    cout << "Save Profile to ./profiles/testProfile.txt (y/n)? ";
    cin >> input;

    if(input == "y") {
        cout << "Saving:" << endl << *p << endl;
        p->writeProfile("./profiles", "testProfile.txt");
    }
}

Profile* buildProfile() {
    string name, input, password;
    Profile* p;

    while(true) {
        cout << "Enter a name for the profile: ";
        cin >> name;

        cout << "Enter a password for the profile: ";
        cin >> password;

        FixedModelData data = FixedModelData(password);
        p = new Profile(name, Fixed, data);

        cout << "Creating profile: " << endl << *p << endl;
        cout << "Correct (y/n)? ";
        cin >> input;
        if(input == "y") break;
    }

    return p;
}

bool was_it_auto_repeat(Display *d, XEvent *event, int current_type, int next_type) {
    /*  Holding down a key will cause 'autorepeat' to send fake keyup/keydown events, but we want to ignore these: '*/
    if (event->type == current_type && XEventsQueued(d, QueuedAfterReading)) {
        XEvent nev;
        XPeekEvent(d, &nev);
        return (nev.type == next_type && nev.xkey.time == event->xkey.time && nev.xkey.keycode == event->xkey.keycode);
    }
    return false;
}

/* MAIN */
int main() {
    // build the profile
    string input;
    Profile *p;

    cout << "Create a new profile (y/n)? ";
    cin >> input;

    if(input == "y") {
        p = buildProfile();
    } else { // input == n
        cout << "Attempting to load ./profiles/testProfile.txt...";
        p = Profile::readProfile("./profiles", "testProfile.txt");
        cout << "Loaded" << endl << *p << endl;
    }

    // set up window for keystroke information
    sleep(1); // sleep for one second, allowing the keys to be released 
    Display *d = XOpenDisplay(NULL);
    Window win = XCreateSimpleWindow(d, RootWindow(d, 0), 1, 1, 400, 300, 0, BlackPixel(d, 0), BlackPixel(d, 0));
    XSelectInput(d, win, KeyPressMask | KeyReleaseMask | ClientMessage);
    XMapWindow(d, win);
    XFlush(d);
    XEvent event;
    Atom closeMessage = XInternAtom(d, "WM_DELETE_WINDOW", True);
    XSetWMProtocols(d, win, &closeMessage, 1);
    bool done = false;

    // set up time
    double time, start;
    start = duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count();
    //time = (duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count() - start) / 1000.0f; // later, in units of seconds 

    // infinite loop until gui closed
    while (!done) {
        XNextEvent(d, &event);
        switch (event.type) {
            case KeyPress: {
                //fprintf(stdout, "key #%ld was pressed.\n", (long)XLookupKeysym(&event.xkey, 0));
                break;
            } case KeyRelease: {
                if (was_it_auto_repeat(d, &event, KeyRelease, KeyPress)) {
                    XNextEvent(d, &event); /* Consume the extra event so we can ignore it. */
                } else {
                    
                    //fprintf(stdout, "key #%ld was released.\n", (long)XLookupKeysym(&event.xkey, 0));
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



    // close out gui
    XDestroyWindow(d, win);
    XCloseDisplay(d);

    // save profile
    saveProfile(p);

    // close out vars
    delete p;

    return 0;
}
