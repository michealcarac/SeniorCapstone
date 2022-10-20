/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/20/2022 
   Purpose: This file implements the Keypresses class 
*/

/* INCLUDES */
#include "keypresses.hpp"

/* CONSTRUCTORS */
// Default constructor
Keypresses::Keypresses() {
    keystrokes.reserve(DEFAULT_SIZE);
    du.reserve(DEFAULT_SIZE);
    ud.reserve(DEFAULT_SIZE);
    dd.reserve(DEFAULT_SIZE);
    uu.reserve(DEFAULT_SIZE);
}

// Sets vectors to given initial length
Keypresses::Keypresses(int initLength) {
    keystrokes.reserve(initLength);
    du.reserve(initLength);
    ud.reserve(initLength);
    dd.reserve(initLength);
    uu.reserve(initLength);
}

/* FUNCTIONS */
// returns a vector of all downstrokes in keystrokes
vector<Keypress> Keypresses::getDownstrokes() {
    int idx;

    vector<Keypress> strokes = keystrokes; // copy constructor
    sort(strokes.begin(), strokes.end(), Keypress::sortByDirection); // sort by direction

    for(int i = 0; i < strokes.size(); i++) { // find the last downstroke
        if(!strokes.at(i).upDown) { // if we found an downstroke
            idx = i;
            break;
        }
    }

    vector<Keypress>::iterator start = strokes.begin() + idx; // start of downstrokes to the end
    vector<Keypress>::iterator end = strokes.end();

    vector<Keypress> downstrokes(start, end); // range constructor

    return downstrokes;
}

// returns a vector of all upstrokes in keystrokes
vector<Keypress> Keypresses::getUpstrokes() {
    int idx;

    vector<Keypress> strokes = keystrokes; // copy constructor
    sort(strokes.begin(), strokes.end(), Keypress::sortByDirection); // sort by direction

    for(int i = 0; i < strokes.size(); i++) { // find the last downstroke
        if(!strokes.at(i).upDown) { // if we found an downstroke
            idx = i;
            break;
        }
    }

    vector<Keypress>::iterator start = strokes.begin(); // start of upstrokes to the first downstroke, exclusive
    vector<Keypress>::iterator end = strokes.begin() + idx;

    vector<Keypress> upstrokes(start, end); // range constructor

    return upstrokes;
}

// float Keypresses::mean() {}

/* OVERLOAD */
// Overloads the << operator (essentially toString())
ostream& operator<<(ostream& os, const Keypresses& presses) {
    for(int i = 0; i < presses.keystrokes.size(); i++) {
        os << presses.keystrokes.at(i) << endl;
    }
    return os;
}

/* ACCESSORS */
// Returns a copy of the keystrokes vector
vector<Keypress> Keypresses::getKeystrokes() {
    vector<Keypress> toReturn = keystrokes; // ensures copy
    return toReturn;
}

/* MUTATORS */
// clears all vectors in this, returning the vectors to DEFAULT_SIZE
void Keypresses::clearData() {
    keystrokes.clear();
    du.clear();
    ud.clear();
    dd.clear();
    uu.clear();
    keystrokes.reserve(DEFAULT_SIZE);
    du.reserve(DEFAULT_SIZE);
    ud.reserve(DEFAULT_SIZE);
    dd.reserve(DEFAULT_SIZE);
    dd.reserve(DEFAULT_SIZE);
}

// clears all vectors in this, returning the vectors to newSize
void Keypresses::clearData(int newSize) {
    keystrokes.clear();
    du.clear();
    ud.clear();
    dd.clear();
    uu.clear();
    keystrokes.reserve(newSize);
    du.reserve(newSize);
    ud.reserve(newSize);
    dd.reserve(newSize);
    dd.reserve(newSize);
}

// Adds keyprses to keystrokes.  Does not run DU, etc. calculations
void Keypresses::appendKeypress(Keypress& keypress) {
    keystrokes.push_back(keypress);
}

/* PRIVATE FUNCTIONS */
// calculates down-up times between each element of keystrokes
void Keypresses::calcDU() {
    vector<Keypress> downstrokes = getDownstrokes();
}

//calcUD
//calcUU
//calcDD