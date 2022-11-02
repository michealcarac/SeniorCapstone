/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/25/2022 
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

/* ACCESSORS */
// Return the current mode
Modes Keylogger::getCurrentMode() { return currentMode; }

// Returns a copy of the current Profile object
Profile* Keylogger::getCurrentProfile() {
    Profile *p = new Profile(profiles.at(currentProfile));
    return p;
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

/* DESTRUCTOR */
Keylogger::~Keylogger() {
    delete presses;
}