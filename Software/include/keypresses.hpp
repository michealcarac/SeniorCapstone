/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/20/2022 
   Purpose: This file describes the Keypressese class.
*/

#ifndef KEYPRESSES_H
#define KEYPRESSES_H

/* INCLUDES */
#include <vector>
#include "keypress.hpp"

/* NAMESPACE */
using std::vector;

class Keypresses {
    public:
        /* CONSTRUCTORS */
        Keypresses(); // default constructor. 
        Keypresses(int initLength); // initializes vectors to given lengths 
    
        /* FUNCTIONS */
        float mean(); // returns the average of the DU, UD, DD, UU times

        /* ACCESSORS */
        vector<Keypress> getKeystrokes(); // return a copy of the keystrokes vector

        /* MUTATORS */
        void clearData(); // clears all vectors
        void appendKeypress(Keypress keypress); // appends the keypress to keystrokes

    private:
        /* FUNCTIONS */
        void calcDU(); // calculate DU times from keystrokes into du
        void calcUD(); // calculate DU times from keystrokes into ud
        void calcDD(); // calculate DU times from keystrokes into dd
        void calcUU(); // calculate DU times from keystrokes into uu
    
        /* MEMBERS */
        vector<Keypress> keystrokes; // collection of keystrokes
        vector<float> du; // collection of down-up times
        vector<float> ud; // collection of up-down times
        vector<float> dd; // collection of down-down times
        vector<float> uu; // collection of up-up times 
};

#endif