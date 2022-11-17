/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 11/8/2022 
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

    // create LCD 
    I2cControl *i2c = new I2cControl(1); //Using software i2c
    lcd = new LcdDriver(LCD_ADDRESS, i2c);
    lcd->setDisplayOnCursorOff();
    lcd->setLine(TOP, getModeAsString());
    lcd->setLine(BOTTOM, getCurrentProfile()->getName());

    // set up com port
    system("stty -F /dev/ttyUSB0 115200");
}

// updates the text on the LCD with the given inputs
void Keylogger::updateLcdText(int line, string text) {
    lcd->clearLine(line);
    lcd->setLine(line, text);
}

// removes the profile at currentProfile
void Keylogger::removeCurrentProfile() {
    profiles.erase(profiles.begin() + currentProfile);
    currentProfile = 0; // staying in the same "delete" listing
}

// adds and selects a new profile
void Keylogger::addProfile(Profile *p) {
    profiles.push_back(p);
    currentProfile = profiles.size() - 1;
}

// run the training algorithm on current information in presses
void Keylogger::runTrain() {
    // give user statistics
    profiles.at(currentProfile).setDataGraph(M, presses->calcM());
    profiles.at(currentProfile).setDataGraph(DU, presses->calcDU());
    profiles.at(currentProfile).setDataGraph(UD, presses->calcUD());
    profiles.at(currentProfile).setDataGraph(DD, presses->calcDD());
    profiles.at(currentProfile).setDataGraph(UU, presses->calcUU());

    GraphStats stats = profiles.at(currentProfile).getTrainStats();
    cout << "Got Stats: " << endl;
    cout << stats << endl;
}

/* FUNCTIONS */
/* NO LONGER APPLICABLE 
void Keylogger::runAuthPi() {
    if(currentProfile >= profiles.size()) {
        cerr << "Error in runAuthPi(): select a valid profile." << endl;
        return;
    }

    // set up time
    double lastTime, time = 0, start;
    start = duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count();

    // set up vars
    vector<float> scores;
    string runningInput = "";
    int inputLength = 0;
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
        lastTime = time;
        time = (duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count() - start) / 1000.0f; // get keystroke time
        switch (event.type) {
            case KeyPress: {
                received = XLookupKeysym(&event.xkey, 0);

                if(received == BACKSPACE && inputLength != 0 && (time - lastTime) > .075) {
                    runningInput.pop_back();
                    inputLength--;
                    cout.flush();
                    cout << "\b \b"; // remove the character from the console
                    cout.flush();
                    continue;
                } else if(received == L_SHIFT || received == R_SHIFT) { // handle shift
                    upper = true;
                    break;
                } else if(received == ENTER || received == BACKSPACE) { // intercept and ignore
                    break;
                }

                if(upper) receivedChar = toupper(char(received)); // get the character 
                else receivedChar = char(received);
                runningInput += receivedChar; // add the input key to the runningInput
                inputLength++;
                cout << receivedChar;
                cout.flush();
                k = new Keypress((float) time, KEY_PRESSED, receivedChar);
                presses->appendKeypress(*k);
                break;
            } case KeyRelease: {
                if (was_it_auto_repeat(d, &event, KeyRelease, KeyPress)) {
                    XNextEvent(d, &event); // Consume the extra event so we can ignore it.
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
                    presses->appendKeypress(*k);
                    if(runningInput == profiles.at(currentProfile).getPassword()) { // if the password has been entered
                        //sleep_for(milliseconds(500)); // sleep for .5 seconds, forcing a large digraph time
                        cout << endl << "Password entered: " << runningInput << " Attempt " << ++numTries;
                        runningInput = "";
                        inputLength = 0;

                        unordered_map<string, Graph> attemptM = presses->calcM();// get M stats from keypresses
                        unordered_map<string, Graph> attemptDU = presses->calcDU();// get DU stats from keypresses
                        unordered_map<string, Graph> attemptUD = presses->calcUD();// get UD stats from keypresses
                        unordered_map<string, Graph> attemptDD = presses->calcDD();// get DD stats from keypresses
                        unordered_map<string, Graph> attemptUU = presses->calcUU();// get UU stats from keypresses

                        float score = 0.0f;
                        // score += profiles.at(currentProfile).getData().calcScore(M, attemptM); // generate score, get value for threshold
                        // score += profiles.at(currentProfile).getData().calcScore(DU, attemptDU); // generate score, get value for threshold
                        // score += profiles.at(currentProfile).getData().calcScore(UD, attemptUD); // generate score, get value for threshold
                        score += profiles.at(currentProfile).getData().calcScore(DD, attemptDD); // generate score, get value for threshold
                        // score += profiles.at(currentProfile).getData().calcScore(UU, attemptUU); // generate score, get value for threshold

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

    // cout << endl << "Running input was '" << runningInput << "'" << endl;

    // print out percentage of allowed entries
    cout << "Allowed " << numAllowed << " of " << numTries << " attempts. Percentage allowed: " << round(((double) numAllowed) / numTries * 1000) / 10.0 << "%" << endl;
    cout << "Average score: " << accumulate(scores.begin(), scores.end(), 0.0f) / scores.size() << endl;

    // close out vars
    delete k;

    // close out gui
    XDestroyWindow(d, win);
    XCloseDisplay(d);
}

*/

// run the training algorithm
/*
void Keylogger::runTrainPi() {
    ofstream outfile;
    outfile.open("/dev/ttyUSB0", std::ios::out);\

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

    lcd->clearLine(TOP);
    lcd->setLine(TOP, getModeAsString() + " " + to_string(numEntries));

    bool done = false;
    while (!done) { // loop until fully trained, or gui is done
        XNextEvent(d, &event);
        time = (duration_cast<milliseconds >(system_clock::now().time_since_epoch()).count() - start) / 1000.0f; // get keystroke time
        switch (event.type) {
            case KeyPress: {
                received = XLookupKeysym(&event.xkey, 0); // get the keypress

                if(received == BACKSPACE && runningInput.length() != 0) { // handle backspace
                    runningInput.pop_back();
                    outfile << (char) 0x7f;
                    outfile.flush();
                    cout << "\b \b"; // remove the character from the console
                    cout.flush();
                    break;
                } else if(received == L_SHIFT || received == R_SHIFT) { // handle shift
                    upper = !upper;
                    break;
                } else if(received == ENTER) {
                    outfile << "\r";
                    outfile.flush();
                    break;
                } else if (received == CAPS) {
                    upper = !upper;
                    break;
                } else if (received == BACKSPACE) {
                    outfile << (char) 0x7f;
                    outfile.flush();
                    break;
                } else if (upper && received >= 48 && received <= 57) {
                    receivedChar = intToSpecial(received);
                } else {
                    if(upper) receivedChar = toupper(char(received)); // get the character 
                    else receivedChar = char(received);
                }

                outfile << receivedChar;
                outfile.flush();
                runningInput += receivedChar; // add the input key to the runningInput
                cout << receivedChar;
                cout.flush();
                k = new Keypress((float) time, KEY_PRESSED, receivedChar);
                presses->appendKeypress(*k);
                break;
            } case KeyRelease: {
                if (was_it_auto_repeat(d, &event, KeyRelease, KeyPress)) {
                    XNextEvent(d, &event); // Consume the extra event so we can ignore it. 
                } else {
                    received = XLookupKeysym(&event.xkey, 0);
                    if(received == BACKSPACE) {
                        break;
                    } else if(received == L_SHIFT || received == R_SHIFT) { // handle shift
                        upper = !upper;
                        break;
                    } else if(received == ENTER) {
                        break;
                    }

                    if(upper) receivedChar = toupper(char(received)); // get the character 
                    else receivedChar = char(received);

                    k = new Keypress((float) time, KEY_RELEASED, receivedChar);
                    presses->appendKeypress(*k);
                    if(runningInput == profiles.at(currentProfile).getPassword()) { // if the password has been entered
                        sleep_for(milliseconds(500)); // sleep for .5 seconds, forcing a large digraph time
                        cout << endl << "Password entered: " << runningInput << " Entry " << ++numEntries << endl;
                        lcd->clearLine(TOP);
                        lcd->setLine(TOP, getModeAsString() + " " + to_string(numEntries));
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
    profiles.at(currentProfile).setDataGraph(M, presses->calcM());
    profiles.at(currentProfile).setDataGraph(DU, presses->calcDU());
    profiles.at(currentProfile).setDataGraph(UD, presses->calcUD());
    profiles.at(currentProfile).setDataGraph(DD, presses->calcDD());
    profiles.at(currentProfile).setDataGraph(UU, presses->calcUU());

    GraphStats stats = profiles.at(currentProfile).getTrainStats();
    cout << "Got Stats: " << endl;
    cout << stats << endl;

    // reset LCD
    lcd->clearLine(TOP);
    lcd->setLine(TOP, getModeAsString());

    // close out com port
    outfile.close();

    // close out vars
    delete k;

    // close out gui
    XDestroyWindow(d, win);
    XCloseDisplay(d);
}

*/

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
    lcd->clearLine(TOP);
    lcd->setLine(TOP, getModeAsString());
}

// Move to the next mode in the sequence
void Keylogger::nextProfile() {
    lcd->clearLine(BOTTOM);

    if(currentProfile < ((int) profiles.size() - 1)) { // if we can just increment
        currentProfile++; // do it
        lcd->setLine(BOTTOM, profiles.at(currentProfile).getName());
        return;
    } else if (currentProfile == ((int) profiles.size() - 1)) { // if we are at the last profile
        // prompt for removal of profile
        lcd->setLine(BOTTOM, "Delete Profile");
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
        lcd->setLine(BOTTOM, "Create Profile");
        cout << "Would you like to create a profile (y/n)? ";
        cin >> input;
        if(input == "y") {
            Profile *p = Keylogger::buildProfile();
            profiles.insert(profiles.begin(), p); // add the profile, if it was created
        }
        currentProfile = 0;
        lcd->clearLine(BOTTOM);
        lcd->setLine(BOTTOM, profiles.at(currentProfile).getName());
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

void Keylogger::appendKeypress(Keypress *k) {
    presses->appendKeypress(*k);
}

void Keylogger::clearKeypresses() {
    presses->clearData();
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

    if (currentProfile == ((int) profiles.size() - 1)) { // if we are at the last profile
        return new Profile("Delete Profile");
    }
    
    return new Profile("Create Profile");
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

/* PRIVATE FUNCTIONS */
char Keylogger::intToSpecial(long received) {
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
        p = new Profile(name, Fixed, &data);

        cout << "Creating profile: " << endl << *p << endl;
        cout << "Correct (y/n)? ";
        cin >> input;
        if(input == "y") break;
    }

    return p;
}

/* DESTRUCTOR */
Keylogger::~Keylogger() {
    saveAllProfiles();
    if(presses) delete presses;
    if(i2c) delete i2c;
    if(lcd) {
        lcd->clearDisplayClearMem();
        delete lcd;
    }
}