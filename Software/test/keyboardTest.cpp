/* Project: Clarkson University Capstone
   Writer(s): Aaron R. Jones
   Last Edited: 10/20/2022
   Purpose: This file tests the use of a real keyboard for input to the system
   Adapted From: https://blog.robertelder.org/detect-keyup-event-linux-terminal/
*/

/* INCLUDES */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xos.h>
#include <X11/Xatom.h>
#include <X11/keysym.h>

#include <iostream>
#include "keypress.hpp"
#include "keypresses.hpp"

/* NAMESPACE */
using std::cout;
using std::endl;

bool was_it_auto_repeat(Display *d, XEvent *event, int current_type, int next_type) {
    /*  Holding down a key will cause 'autorepeat' to send fake keyup/keydown events, but we want to ignore these: '*/
    if (event->type == current_type && XEventsQueued(d, QueuedAfterReading)) {
        XEvent nev;
        XPeekEvent(d, &nev);
        return (nev.type == next_type && nev.xkey.time == event->xkey.time && nev.xkey.keycode == event->xkey.keycode);
    }
    return false;
}

int main() {
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

    cout << "Keystrokes will be added to keystrokes[] and mean() will be run after each ocacasion." << endl;
    int time = 0;
    Keypresses *presses = new Keypresses();
    Keypress *stroke;

    // infinite loop until gui closed
    while (!done) {
        XNextEvent(d, &event);
        switch (event.type) {
            case KeyPress: {
                //fprintf(stdout, "key #%ld was pressed.\n", (long)XLookupKeysym(&event.xkey, 0));
                stroke = new Keypress(time++, false, char(XLookupKeysym(&event.xkey, 0))); // false = pressed
                presses->appendKeypress(*stroke);
                break;
            } case KeyRelease: {
                if (was_it_auto_repeat(d, &event, KeyRelease, KeyPress)) {
                    XNextEvent(d, &event); /* Consume the extra event so we can ignore it. */
                } else {
                    stroke = new Keypress(time++, true, char(XLookupKeysym(&event.xkey, 0))); // true = released
                    presses->appendKeypress(*stroke);

                    // print output
                    cout << *presses << endl;
                    vector<float> averages = presses->mean();
                    cout << "M:  " << averages.at(0) << endl;
                    cout << "DU: " << averages.at(1) << endl;
                    cout << "UD: " << averages.at(2) << endl;
                    cout << "DD: " << averages.at(3) << endl;
                    cout << "UU: " << averages.at(4) << endl;
                    cout << endl;

                    cout << "---------------------------------------------------" << endl;
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

    // close out vars
    delete presses;

    // close out gui
    XDestroyWindow(d, win);
    XCloseDisplay(d);
    return 0;
}