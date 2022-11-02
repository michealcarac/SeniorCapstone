/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/25/2022 
   Purpose: This file describes the Keylogger class.
*/

#ifndef KEYLOGGER_H
#define KEYLOGGER_H

/* DEFINES */
#define PROFILE_SAVE_DIR "./profiles"

/* INCLUDES */
#include <vector>
#include "modes.hpp"
#include "profile.hpp"
#include "keypresses.hpp"

/* NAMESPACES */
using std::vector;

class Keylogger {
    public:
        /* CONSTRUCTORS */
        Keylogger(); // constructor

        /* FUNCTIONS */
        void runAuth();  // runs the authentication algorithm
        void runTrain(); // runs the training algorithm
        void runDisable(); // runs the "disabled" mode
        void nextMode(); // moves to the next mode
        void nextProfile(); // moves to the next profile, including entries for "New" and "Delete"

        /* ACCESSORS */
        Modes getCurrentMode(); // returns the current mode
        Profile* getCurrentProfile(); // returns the current Profile object 
        
        /* MUTATORS */
        void setCurrentMode(Modes newMode); // sets the system to the requested mode
        void setCurrentProfile(int newProfile); // moves to the specified entry in the profiles vector

        /* DESTRUCTOR */
        ~Keylogger();

    private:
        Modes currentMode;
        int currentProfile;
        vector<Profile> profiles;
        Keypresses *presses;
};

#endif