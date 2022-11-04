/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/25/2022 
   Purpose: This file describes the Keylogger class.
*/

#ifndef KEYLOGGER_H
#define KEYLOGGER_H

/* DEFINES */
#define PROFILE_SAVE_DIR "./profiles"
#define MAX_TRAIN 10

/* INCLUDES */
#include <chrono>
#include <vector>
#include <thread>
#include <iostream>
#include "modes.hpp"
#include "profile.hpp"
#include "keypresses.hpp"

/* FOR USE WITH PI */
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xos.h>
#include <X11/Xatom.h>
#include <X11/keysym.h>

/* NAMESPACES */
using std::cin;
using std::cout;
using std::cerr;
using std::endl;
using std::vector;
using std::to_string;
using std::chrono::system_clock;
using std::chrono::milliseconds;
using std::chrono::duration_cast;
using std::this_thread::sleep_for;

class Keylogger {
    public:
        /* CONSTRUCTORS */
        Keylogger(); // constructor

        /* FUNCTIONS */
        void runAuthPi();  // runs the authentication algorithm
        void runTrainPi(); // runs the training algorithm
        void runDisablePi(); // runs the "disabled" mode
        void nextMode(); // moves to the next mode
        void nextProfile(); // moves to the next profile, including entries for "New" and "Delete"
        void saveAllProfiles(); // save all possible profiles

        /* ACCESSORS */
        void printProfileNames(); // print the names of every available profile
        Modes getCurrentMode(); // returns the current mode
        Profile* getCurrentProfile(); // returns the current Profile object 
        string getModeAsString(); // returns the current mode as a string

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

        /* PRIVATE FUNCTIONS */

        /* FOR USE WITH PI */
        Display *d;
        Window win;
        Atom closeMessage;
        XEvent event;

        bool was_it_auto_repeat(Display *d, XEvent *event, int current_type, int next_type); // checks is a keypress in the global window was held down
        void createWindow(); // creates a X11 window for keypress receipt, requires global vars
        static Profile* buildProfile(); // Prompts the user for the creation of a file 
};

#endif