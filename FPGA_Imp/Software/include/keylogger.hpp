/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 12/10/2022 
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
#include <fstream>
#include "modes.hpp"
#include "profile.hpp"
#include "lcdDriver.hpp"
#include "keypresses.hpp"
#include "i2cControl.hpp"

/* DEFINES */
#define LCD_ADDRESS 0x27
#define TOP 1
#define BOTTOM 2

/* NAMESPACES */
using std::cin;
using std::cout;
using std::cerr;
using std::endl;
using std::vector;
using std::ofstream;
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
        void runTrain(); // run training algorithm on current input
        float runAuth(); // run training algorithm on current input

        void nextMode(); // moves to the next mode
        void nextProfile(); // moves to the next profile, including entries for "New" and "Delete"
        void saveAllProfiles(); // save all possible profiles
        void appendKeypress(Keypress *k); // append a keypress to the current input 
        void clearKeypresses(); // clear all entries in presses

        void updateLcdText(int line, string text); // update the text on the selected row of the lcd
        void removeCurrentProfile(); // delete the currently selected profile
        void addProfile(Profile *p); // adds and selects a new profile

        /* ACCESSORS */
        void printProfileNames(); // print the names of every available profile
        Modes getCurrentMode(); // returns the current mode
        Profile* getCurrentProfile(); // returns the current Profile object 
        string getModeAsString(); // returns the current mode as a string
        float getCurrentThreshold(); // get the current threshold value

        /* MUTATORS */
        void setCurrentMode(Modes newMode); // sets the system to the requested mode
        void setCurrentProfile(int newProfile); // moves to the specified entry in the profiles vector

        /* DESTRUCTOR */
        ~Keylogger();

    private:
        Modes currentMode;
        int currentProfile; // the index to the current profile.  allowed to go outside of the valid index of profiles for create/delete profile
        vector<Profile> profiles;
        Keypresses *presses;

        /* PRIVATE FUNCTIONS */
        float scoreAuth(); // score authentication

        /* FOR USE WITH PI */
        I2cControl *i2c;
        LcdDriver *lcd;

        char intToSpecial(long received);

        static Profile* buildProfile(); // Prompts the user for the creation of a file 
};

#endif