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
    m.reserve(DEFAULT_SIZE);
    du.reserve(DEFAULT_SIZE);
    ud.reserve(DEFAULT_SIZE);
    dd.reserve(DEFAULT_SIZE);
    uu.reserve(DEFAULT_SIZE);
}

// Sets vectors to given initial length
Keypresses::Keypresses(int initLength) {
    keystrokes.reserve(initLength);
    m.reserve(initLength);
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

// Returns averages as: [DU, UD, DD, UU] in vector form
vector<float> Keypresses::mean() {
    vector<float> averages;

    calcM(); // calculate vectors
    calcDU(); 
    calcUD();
    calcDD();
    calcUU();

    averages.push_back(accumulate(m.begin(), m.end(), 0.0f) / m.size()); // calculate averages 
    averages.push_back(accumulate(du.begin(), du.end(), 0.0f) / du.size());
    averages.push_back(accumulate(ud.begin(), ud.end(), 0.0f) / ud.size());
    averages.push_back(accumulate(dd.begin(), dd.end(), 0.0f) / dd.size());
    averages.push_back(accumulate(uu.begin(), uu.end(), 0.0f) / uu.size());

    return averages;
}

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

// Returns a copy of the du vector
vector<float> Keypresses::getM() {
    calcM(); // get the DU times 
    vector<float> toReturn = m; // ensures copy
    return toReturn;
}

// Returns a copy of the du vector
vector<float> Keypresses::getDU() {
    calcDU(); // get the DU times 
    vector<float> toReturn = du; // ensures copy
    return toReturn;
}

// Returns a copy of the ud vector
vector<float> Keypresses::getUD() {
    calcUD(); // get the UD times 
    vector<float> toReturn = ud; // ensures copy
    return toReturn;
}

// Returns a copy of the dd vector
vector<float> Keypresses::getDD() {
    calcDD(); // get the DD times 
    vector<float> toReturn = dd; // ensures copy
    return toReturn;
}

// Returns a copy of the uu vector
vector<float> Keypresses::getUU() {
    calcUU(); // get the UD times 
    vector<float> toReturn = uu; // ensures copy
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
// calculates monograph times between each element of keystrokes
void Keypresses::calcM() {
    m.clear();

    vector<Keypress> downstrokes = getDownstrokes();
    sort(downstrokes.begin(), downstrokes.end(), Keypress::sortByTime);

    vector<Keypress> upstrokes = getUpstrokes();
    sort(upstrokes.begin(), upstrokes.end(), Keypress::sortByTime);

    for(int j = 0; j < downstrokes.size(); j++) { 
        int i;
        
        for(i = 0; i < upstrokes.size(); i++) { // get the closest upstroke to the current downstroke
            if(downstrokes.at(j).character == upstrokes.at(i).character) break;
        }

        if(i != upstrokes.size()) { // if an upstroke was found 
            m.push_back(abs(downstrokes.at(j).time - upstrokes.at(i).time)); // get the time
            upstrokes.erase(upstrokes.begin() + i); // remove the upstroke we just calculated with 
        }
    }
}

// calculates down-up times between each element of keystrokes
void Keypresses::calcDU() {
    du.clear();

    vector<Keypress> downstrokes = getDownstrokes();
    sort(downstrokes.begin(), downstrokes.end(), Keypress::sortByTime);

    vector<Keypress> upstrokes = getUpstrokes();
    sort(upstrokes.begin(), upstrokes.end(), Keypress::sortByTime);

    for(int j = 0; j < downstrokes.size(); j++) { 
        int i;
        
        for(i = 0; i < upstrokes.size(); i++) { // get the closest upstroke to the current downstroke
            if(downstrokes.at(j).time < upstrokes.at(i).time && downstrokes.at(j).character != upstrokes.at(i).character) break;
        }

        if(i != upstrokes.size()) { // if an upstroke was found 
            du.push_back(abs(downstrokes.at(j).time - upstrokes.at(i).time)); // get the time
            upstrokes.erase(upstrokes.begin() + i); // remove the upstroke we just calculated with 
        }
    }
}

// calculates up-down times between each element of keystrokes
void Keypresses::calcUD() {
    ud.clear();

    vector<Keypress> downstrokes = getDownstrokes();
    sort(downstrokes.begin(), downstrokes.end(), Keypress::sortByTime);

    vector<Keypress> upstrokes = getUpstrokes();
    sort(upstrokes.begin(), upstrokes.end(), Keypress::sortByTime);

    for(int j = 0; j < upstrokes.size(); j++) { 
        int i;
        
        for(i = 0; i < downstrokes.size(); i++) { // get the closest upstroke to the current downstroke
            if(upstrokes.at(j).time < downstrokes.at(i).time) break;
        }

        if(i != downstrokes.size()) { // if a downstroke was found
            ud.push_back(abs(upstrokes.at(j).time - downstrokes.at(i).time)); // get the time
            downstrokes.erase(downstrokes.begin() + i); // remove the upstroke we just calculated with 
        }
    }
}

// calculates down-down times between each element of keystrokes
void Keypresses::calcDD() {
    dd.clear();

    vector<Keypress> downstrokes = getDownstrokes();
    sort(downstrokes.begin(), downstrokes.end(), Keypress::sortByTime);

    if(downstrokes.size() < 2) return; // only execute if there are enough downstrokes to count 

    dd.reserve(downstrokes.size() - 1);

    for(int i = 0; i < downstrokes.size() - 1; i++) {
        dd.push_back(abs(downstrokes.at(i).time - downstrokes.at(i + 1).time));
    }
}

// calculates up-up times between each element of keystrokes
void Keypresses::calcUU() {
    uu.clear();

    vector<Keypress> upstrokes = getUpstrokes();
    sort(upstrokes.begin(), upstrokes.end(), Keypress::sortByTime);

    if(upstrokes.size() < 2) return; // only execute if there are enough downstrokes to count 

    uu.reserve(upstrokes.size() - 1);

    for(int i = 0; i < upstrokes.size() - 1; i++) {
        uu.push_back(abs(upstrokes.at(i).time - upstrokes.at(i + 1).time));
    }
}