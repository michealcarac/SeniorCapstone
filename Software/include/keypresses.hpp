/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/20/2022 
   Purpose: This file describes the Keypressese class.
*/

#ifndef KEYPRESSES_H
#define KEYPRESSES_H

/* DEFINES */
#define DEFAULT_SIZE 20

/* INCLUDES */
#include <vector>
#include <numeric>
#include <iostream>
#include "keypress.hpp"

/* NAMESPACE */
using std::sort;
using std::endl;
using std::vector;
using std::ostream;
using std::iterator;
using std::accumulate;

class Keypresses {
    public:
        /* CONSTRUCTORS */
        Keypresses(); // default constructor. 
        Keypresses(int initLength); // initializes vectors to given lengths 
    
        /* FUNCTIONS */
        vector<Keypress> getDownstrokes(); // returns a vector of all downstrokes 
        vector<Keypress> getUpstrokes(); // returns a vector of all upstrokes
        vector<float> mean(); // returns the average of the DU, UD, DD, UU times

        /* OVERLOADS */
        friend ostream& operator<<(ostream& os, const Keypresses& presses); // overloads <<

        /* ACCESSORS */
        vector<Keypress> getKeystrokes(); // return a copy of the keystrokes vector
        vector<float> getDU(); // returns the down-up times
        vector<float> getUD(); // returns the up-down times
        vector<float> getDD(); // returns the up-down times
        vector<float> getUU(); // returns the up-down times

        /* MUTATORS */
        void clearData(); // clears all vectors, returning them to DEFAULT_SIZE
        void clearData(int newSize); // clears all vectors, returning them to newSize
        void appendKeypress(Keypress& keypress); // appends the keypress to keystrokes

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