/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 12/10/2022 
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
//      sets lcd to the current mode and profile 
//      configures UART connection
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

    presses->clearData();
}

// run the authentication algorithm on current information in presses
float Keylogger::runAuth() {
    unordered_map<string, Graph> attemptM = presses->calcM();// get M stats from keypresses
    unordered_map<string, Graph> attemptDU = presses->calcDU();// get DU stats from keypresses
    unordered_map<string, Graph> attemptUD = presses->calcUD();// get UD stats from keypresses
    unordered_map<string, Graph> attemptDD = presses->calcDD();// get DD stats from keypresses
    unordered_map<string, Graph> attemptUU = presses->calcUU();// get UU stats from keypresses

    /* TODO: INCLUDE OTHER GRAPHS BY WEIGHTING HERE */
    float score = 0.0f;
    // score += profiles.at(currentProfile).getData().calcScore(M, attemptM); // generate score, get value for threshold
    // score += profiles.at(currentProfile).getData().calcScore(DU, attemptDU); // generate score, get value for threshold
    // score += profiles.at(currentProfile).getData().calcScore(UD, attemptUD); // generate score, get value for threshold
    score += profiles.at(currentProfile).getData().calcScore(DD, attemptDD); // generate score, get value for threshold
    // score += profiles.at(currentProfile).getData().calcScore(UU, attemptUU); // generate score, get value for threshold

    presses->clearData();

    return score;
}

// get the threshold for the current password
float Keylogger::getCurrentThreshold() {
    float threshold = (float) (profiles.at(currentProfile).getPassword().length() - 1); // threshold is 1 * numGraphs
    return threshold;
}

/* FUNCTIONS */
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

// Move to the next profile in the sequence
// Handle delete/create profile option display
void Keylogger::nextProfile() {
    lcd->clearLine(BOTTOM);

    if(currentProfile < ((int) profiles.size() - 1)) { // if we can just increment
        currentProfile++; // do it
        lcd->setLine(BOTTOM, profiles.at(currentProfile).getName());
        return;
    } else if (currentProfile == ((int) profiles.size() - 1)) { // if we are at the last profile
        // prompt for removal of profile
        lcd->setLine(BOTTOM, "Delete Profile");
        currentProfile++;
        return;
    } else { 
        // prompt for a new profile
        string input;
        lcd->setLine(BOTTOM, "Create Profile");
        currentProfile = -1;
        return;
    }

}

// saves all profiles to ./profiles
void Keylogger::saveAllProfiles() {
    int oldProfile = currentProfile;
    system("rm -f ./profiles/profile*");
    sleep_for(milliseconds(500)); // waiting for the shell above to finish
    for(currentProfile = 0; currentProfile < profiles.size(); currentProfile++) {
        string filename = "profile" + to_string(currentProfile) + ".txt";
        profiles.at(currentProfile).writeProfile("./profiles", filename);
    }
    currentProfile = oldProfile;
}

// append a keypress to this.presses
void Keylogger::appendKeypress(Keypress *k) {
    presses->appendKeypress(*k);
}

// clear the keypress information from this.presses
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

    if (currentProfile == ((int) profiles.size())) { // if we are at the last profile
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
// convert the X11 code (long) to a char (for UART sending, etc.)
// more special characters are added here and in the pico 
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
// no longer used
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