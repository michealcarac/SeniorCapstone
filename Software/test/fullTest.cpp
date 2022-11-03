/* Project: Clarkson University Capstone
   Writer(s): Aaron R. Jones
   Last Edited: 11/3/2022
   Purpose: This file tests the use of a real keyboard for input to the system, 
            including profile creation, training, and testing.
   Adapted From: https://blog.robertelder.org/detect-keyup-event-linux-terminal/
*/

/* INCLUDES */
#include "profile.hpp"
#include "modelType.hpp"
#include "keypresses.hpp"
#include "graphStats.hpp"
#include "fixedModelData.hpp"

#include <chrono>
#include <string>
#include <thread>
#include <stdlib.h>
#include <unistd.h>
#include <iostream>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xos.h>
#include <X11/Xatom.h>
#include <X11/keysym.h>

/* DEFINES */
int MAX_TRAIN = 10;

/* NAMESPACE */
using std::cin;
using std::cout;
using std::endl;
using std::chrono::milliseconds;
using std::chrono::system_clock;
using std::chrono::duration_cast;

/* VARIABLES */
// some global variables, mostly to run the keystroke detection window
Display *d;
Window win;
Atom closeMessage;
XEvent event;
Profile *profile;
Keypresses *presses;

/* FUNCTION PROTOTYPES */
void runTrain(); // run the train algorithm
void runAuth(); // run the authentication algorithm
void saveProfile(Profile* p); // save a profile to a file, if prompted
Profile* buildProfile(); // build a profile from user input 
void createWindow(); // creates a X11 window for keypress receipt, requires global vars
bool was_it_auto_repeat(Display *d, XEvent *event, int current_type, int next_type); // checks is a keypress in the global window was held down

/* FUNCTIONS */
// Runs the training algorithm.  Requires global variables.
void runTrain() {
    // set up time
    double time, start;
    start = duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count();

    // set up vars
    string runningInput = "";
    int numEntries = 0;
    long received;
    Keypress *k;

    bool done = false;
    while (!done) { // loop until fully trained, or gui is done
        XNextEvent(d, &event);
        time = (duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count() - start) / 1000.0f; // get keystroke time
        switch (event.type) {
            case KeyPress: {
                received = XLookupKeysym(&event.xkey, 0);
                if(received == BACKSPACE && runningInput.length() != 0) {
                    runningInput.pop_back();
                    cout << "\b \b"; // remove the character from the console
                    cout.flush();
                    break;
                }
                runningInput += char(received); // add the input key to the runningInput
                cout << char(received);
                cout.flush();
                k = new Keypress((float) time, KEY_PRESSED, char(received));
                presses->appendKeypress(*k);
                break;
            } case KeyRelease: {
                if (was_it_auto_repeat(d, &event, KeyRelease, KeyPress)) {
                    XNextEvent(d, &event); /* Consume the extra event so we can ignore it. */
                } else {
                    received = XLookupKeysym(&event.xkey, 0);
                    if(received == BACKSPACE) break;
                    k = new Keypress((float) time, KEY_RELEASED, char(received));
                    presses->appendKeypress(*k);
                    if(runningInput == profile->getPassword()) { // if the password has been entered
                        std::this_thread::sleep_for(std::chrono::milliseconds(500)); // sleep for .5 seconds, forcing a large digraph time
                        cout << endl << "Password entered: " << runningInput << " Entry " << ++numEntries << " of " << MAX_TRAIN << endl;
                        runningInput = "";
                        if(numEntries == MAX_TRAIN) done = true;
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

    // close out vars
    delete k;

    // close out gui
    XDestroyWindow(d, win);
    XCloseDisplay(d);
}

// Runs the authentication algorithm.  Requires global variables
void runAuth() {
    // set up time
    double time, start;
    start = duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count();

    // set up vars
    vector<float> scores;
    string runningInput = "";
    int numTries = 0, numAllowed = 0;
    long received;
    Keypress *k;
    presses->clearData();

    float threshold = (float) (profile->getPassword().length() - 1); // threshold is 1 * numGraphs

    bool done = false;
    while (!done) { // loop until fully trained, or gui is done
        XNextEvent(d, &event);
        time = (duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count() - start) / 1000.0f; // get keystroke time
        switch (event.type) {
            case KeyPress: {
                received = XLookupKeysym(&event.xkey, 0);
                if(received == BACKSPACE && runningInput.length() != 0) {
                    runningInput.pop_back();
                    cout << "\b \b"; // remove the character from the console
                    cout.flush();
                    break;
                }
                runningInput += char(received); // add the input key to the runningInput
                cout << char(received);
                cout.flush();
                k = new Keypress((float) time, KEY_PRESSED, char(received));
                presses->appendKeypress(*k);
                break;
            } case KeyRelease: {
                if (was_it_auto_repeat(d, &event, KeyRelease, KeyPress)) {
                    XNextEvent(d, &event); /* Consume the extra event so we can ignore it. */
                } else {
                    received = XLookupKeysym(&event.xkey, 0);
                    if(received == BACKSPACE) break;
                    k = new Keypress((float) time, KEY_RELEASED, char(received));
                    presses->appendKeypress(*k);
                    if(runningInput == profile->getPassword()) { // if the password has been entered
                        std::this_thread::sleep_for(std::chrono::milliseconds(500)); // sleep for .5 seconds, forcing a large digraph time
                        cout << endl << "Password entered: " << runningInput << " Attempt " << ++numTries;
                        runningInput = "";
                        unordered_map<string, Graph> attemptDD = presses->calcDD();// get DD stats from keypresses
                        float score = profile->getData().calcScore(DD, attemptDD); // generate score, get value for threshold
                        scores.push_back(score);
                        cout << ", Score: " << score;
                        if(score <= threshold) {
                            numAllowed++;
                            cout << ", Entry allowed" << endl;
                        } else {
                            cout << ", Entry denied" << endl;
                        }
                        presses->clearData();
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

    // print out percentage of allowed entries
    cout << "Allowed " << numAllowed << " of " << numTries << " attempts. Percentage allowed: " << round(((double) numAllowed) / numTries * 1000) / 10.0 << "%" << endl;
    cout << "Average score: " << accumulate(scores.begin(), scores.end(), 0.0f) / scores.size() << endl;

    // close out vars
    delete k;

    // close out gui
    XDestroyWindow(d, win);
    XCloseDisplay(d);
}

// Prompts the user for potential to save profile
void saveProfile(Profile* p) {
    string input;
    
    cout << "Save Profile to ./profiles/profile0.txt (y/n)? ";
    cin >> input;

    if(input == "y") {
        cout << "Saving:" << endl << *p << endl;
        p->writeProfile("./profiles", "profile0.txt");
    }
}

// Prompts the user for the creation of a profile
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

/* MAIN */
int main() {
    // variable setup
    presses = new Keypresses();

    // build the profile
    string input;

    cout << "Create a new profile (y/n)? ";
    cin >> input;

    if(input == "y") {
        profile = buildProfile();
    } else { // input == n
        cout << "Attempting to load ./profiles/testProfile.txt...";
        profile = Profile::readProfile("./profiles", "profile0.txt");
        cout << "Loaded" << endl << *profile << endl;
    }

    // set up window for keystroke information
    std::this_thread::sleep_for(std::chrono::milliseconds(200)); // sleep for .2 seconds, allowing the keys to be released 
    createWindow();

    // Run training algorithm
    cout << "Enter the password " << MAX_TRAIN << " times.  Do not press enter." << endl;
    runTrain();
    cout << "Training Complete!" << endl << endl;
    
    // add the DD to the profile trained set
    profile->setDataDd(presses->calcDD());
    GraphStats stats = profile->getTrainStats();

    cout << "Got stats: " << endl;
    cout << stats << endl << endl;

    cout << "Running authentication algorithm.  Close X11 Window to exit." << endl;
    createWindow();
    runAuth();
    cout << "Authentication complete!" << endl << endl;

    // save profile
    saveProfile(profile);

    // close out vars
    delete profile;
    delete presses;

    return 0;
}
