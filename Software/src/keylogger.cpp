/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 11/3/2022 
   Purpose: This file implements the Keylogger class.
*/

/* INCLUDES */
#include "keylogger.hpp"

/* CONSTRUCTORS */

// Creates a Keylogger object with defaults:
//      currentMode: Disable
//      currentProfile: 0
//      profiles: loaded from ./profiles
//      presses: Empty Keypresses object
Keylogger::Keylogger() {
    currentMode = Disable;
    currentProfile = 0;
    presses = new Keypresses();

    while(true) { // get possible profiles
        // try to open file    
        string filepath =  "./profiles/profile" + std::to_string(currentProfile++) + ".txt"; 
        ifstream infile;
        infile.open(filepath, std::ios::in);
        
        if(infile.is_open() != true) break;  // exit if there are no more files

        // load profiles
        Profile *p = Profile::readProfile(filepath, "");
        profiles.push_back(*p);
    }

    currentProfile = 0; // select the first profile
}

/* FUNCTIONS */
void Keylogger::runAuthPi() {
    if(currentProfile >= profiles.size()) {
        cerr << "Error in runAuthPi(): select a valid profile." << endl;
        return;
    }

    createWindow();

    // set up time
    double time, start;
    start = duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count();

    // set up vars
    vector<float> scores;
    string runningInput = "";
    int numTries = 0, numAllowed = 0;
    long received;
    char receivedChar;
    bool upper = false;
    Keypress *k;
    presses->clearData();

    float threshold = (float) (profiles.at(currentProfile).getPassword().length() - 1); // threshold is 1 * numGraphs

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
                } else if(received == L_SHIFT || received == R_SHIFT) { // handle shift
                    upper = true;
                    break;
                }

                if(upper) receivedChar = toupper(char(received)); // get the character 
                else receivedChar = char(received);

                runningInput += receivedChar; // add the input key to the runningInput
                cout << receivedChar;
                cout.flush();
                k = new Keypress((float) time, KEY_PRESSED, receivedChar);
                presses->appendKeypress(*k);
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
                    }

                    if(upper) receivedChar = toupper(char(received)); // get the character 
                    else receivedChar = char(received);

                    k = new Keypress((float) time, KEY_RELEASED, receivedChar);
                    presses->appendKeypress(*k);
                    if(runningInput == profiles.at(currentProfile).getPassword()) { // if the password has been entered
                        sleep_for(milliseconds(500)); // sleep for .5 seconds, forcing a large digraph time
                        cout << endl << "Password entered: " << runningInput << " Attempt " << ++numTries;
                        runningInput = "";
                        unordered_map<string, Graph> attemptDD = presses->calcDD();// get DD stats from keypresses
                        float score = profiles.at(currentProfile).getData().calcScore(DD, attemptDD); // generate score, get value for threshold
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

// run the training algorithm
void Keylogger::runTrainPi() {
    if(currentProfile >= profiles.size()) {
        cerr << "Error in runTrainPi(): select a valid profile." << endl;
        return;
    }

    createWindow();

    // set up time
    double time, start;
    start = duration_cast<milliseconds>(system_clock::now().time_since_epoch()).count();

    // set up vars
    string runningInput = "";
    int numEntries = 0;
    long received;
    char receivedChar;
    bool upper = false;
    Keypress *k;
    presses->clearData();

    bool done = false;
    while (!done) { // loop until fully trained, or gui is done
        XNextEvent(d, &event);
        time = (duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count() - start) / 1000.0f; // get keystroke time
        switch (event.type) {
            case KeyPress: {
                received = XLookupKeysym(&event.xkey, 0); // get the keypress

                if(received == BACKSPACE && runningInput.length() != 0) { // handle backspace
                    runningInput.pop_back();
                    cout << "\b \b"; // remove the character from the console
                    cout.flush();
                    break;
                } else if(received == L_SHIFT || received == R_SHIFT) { // handle shift
                    upper = true;
                    break;
                }

                if(upper) receivedChar = toupper(char(received)); // get the character 
                else receivedChar = char(received);
                
                runningInput += receivedChar; // add the input key to the runningInput
                cout << receivedChar;
                cout.flush();
                k = new Keypress((float) time, KEY_PRESSED, receivedChar);
                presses->appendKeypress(*k);
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
                    }

                    if(upper) receivedChar = toupper(char(received)); // get the character 
                    else receivedChar = char(received);

                    k = new Keypress((float) time, KEY_RELEASED, receivedChar);
                    presses->appendKeypress(*k);
                    if(runningInput == profiles.at(currentProfile).getPassword()) { // if the password has been entered
                        sleep_for(milliseconds(500)); // sleep for .5 seconds, forcing a large digraph time
                        cout << endl << "Password entered: " << runningInput << " Entry " << ++numEntries << endl;
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

    // give user statistics
    profiles.at(currentProfile).setDataDd(presses->calcDD());
    GraphStats stats = profiles.at(currentProfile).getTrainStats();
    cout << "Got Stats: " << endl;
    cout << stats << endl;

    // close out vars
    delete k;

    // close out gui
    XDestroyWindow(d, win);
    XCloseDisplay(d);
}

// Move to the next mode in the sequence
void Keylogger::nextMode() {
    switch(currentMode) {
        case FixedTrain:
            currentMode = FixedTest;
            break;
        case FixedTest: 
            currentMode = Disable;
            break;
        case Disable:
            currentMode = FixedTrain;
            break;
        default:
            currentMode = Disable;
    }
}

// Move to the next mode in the sequence
void Keylogger::nextProfile() {
    if(currentProfile < ((int) profiles.size() - 1)) { // if we can just increment
        currentProfile++; // do it
        return;
    } else if (currentProfile == ((int) profiles.size() - 1)) { // if we are at the last profile
        // prompt for removal of profile
        string input;
        cout << "Would you like to delete a profile (y/n)? ";
        cin >> input;
        if(input == "y") {
            cout << "Enter the number of the profile to delete." << endl;
            printProfileNames();
            cin >> input;
            profiles.erase(profiles.begin() + stoi(input));
            currentProfile--; // staying in the same "delete" listing
        } else {
            currentProfile++;
        }
        return;
    } else { 
        // prompt for a new profile
        string input;
        cout << "Would you like to create a profile (y/n)? ";
        cin >> input;
        if(input == "y") {
            Profile *p = Keylogger::buildProfile();
            profiles.insert(profiles.begin(), p); // add the profile, if it was created
        }
        currentProfile = 0;
        return;
    }

}

// saves all profiles
void Keylogger::saveAllProfiles() {
    system("rm -f ./profiles/profile*");
    sleep_for(milliseconds(500)); // waiting for the shell above to finish
    for(currentProfile = 0; currentProfile < profiles.size(); currentProfile++) {
        string filename = "profile" + to_string(currentProfile) + ".txt";
        profiles.at(currentProfile).writeProfile("./profiles", filename);
    }
}

/* ACCESSORS */
// Return the current mode
Modes Keylogger::getCurrentMode() { return currentMode; }

// Returns a copy of the current Profile object
Profile* Keylogger::getCurrentProfile() {
    if(currentProfile < profiles.size()) {
        Profile *p = new Profile(profiles.at(currentProfile));
        return p;
    }
    
    return new Profile("Delete Profile");
}

// returns the current mode as a string
string Keylogger::getModeAsString() {
    switch(currentMode) {
        case FixedTrain: return "FixedTrain";
        case FixedTest: return "FixedTest";
        case Disable: return "Disable";
    }
    return "UnknownMode";
}

// prints all profile names 
void Keylogger::printProfileNames() {
    for(int i = 0; i < profiles.size(); i++) {
        cout << i << ": " << profiles.at(i).getName() << endl;
    }
}

/* MUTATORS */
// sets the mode of the Keylogger
void Keylogger::setCurrentMode(Modes newMode) {
    currentMode = newMode;
}

// sets the current profile (int location) of the Keylogger
void Keylogger::setCurrentProfile(int newProfile) {
    currentProfile = newProfile;
}

/* PRIVATE FUNCTIONS FOR PI */
// Prompts the user for the creation of a profile
Profile* Keylogger::buildProfile() {
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

// detection of held keys
bool Keylogger::was_it_auto_repeat(Display *d, XEvent *event, int current_type, int next_type) {
    /*  Holding down a key will cause 'autorepeat' to send fake keyup/keydown events, but we want to ignore these: '*/
    if (event->type == current_type && XEventsQueued(d, QueuedAfterReading)) {
        XEvent nev;
        XPeekEvent(d, &nev);
        return (nev.type == next_type && nev.xkey.time == event->xkey.time && nev.xkey.keycode == event->xkey.keycode);
    }
    return false;
}

// create a window
void Keylogger::createWindow() {
    d = XOpenDisplay(NULL);
    win = XCreateSimpleWindow(d, RootWindow(d, 0), 1, 1, 400, 300, 0, BlackPixel(d, 0), BlackPixel(d, 0));
    XSelectInput(d, win, KeyPressMask | KeyReleaseMask | ClientMessage);
    XMapWindow(d, win);
    XFlush(d);
    closeMessage = XInternAtom(d, "WM_DELETE_WINDOW", True);
    XSetWMProtocols(d, win, &closeMessage, 1);
}

/* DESTRUCTOR */
Keylogger::~Keylogger() {
    saveAllProfiles();
    if(presses) delete presses;
}