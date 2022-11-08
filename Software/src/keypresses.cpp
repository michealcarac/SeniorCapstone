/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 11/8/2022 
   Purpose: This file implements the Keypresses class 
*/

/* INCLUDES */
#include "keypresses.hpp"

/* CONSTRUCTORS */
// Default constructor
Keypresses::Keypresses() {
    keystrokes.reserve(DEFAULT_SIZE);
}

// Sets vectors to given initial length
Keypresses::Keypresses(int initLength) {
    keystrokes.reserve(initLength);
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
    keystrokes.reserve(DEFAULT_SIZE);
}

// clears all vectors in this, returning the vectors to newSize
void Keypresses::clearData(int newSize) {
    keystrokes.clear();
    keystrokes.reserve(newSize);
}

// Adds keyprses to keystrokes.  Does not run DU, etc. calculations
void Keypresses::appendKeypress(Keypress& keypress) {
    keystrokes.push_back(keypress);
}

/* PRIVATE FUNCTIONS */

// calculates monograph times between each element of keystrokes
unordered_map<string, Graph> Keypresses::calcM() {
    unordered_map<string, Graph> m;

    vector<Keypress> downstrokes = getDownstrokes();
    sort(downstrokes.begin(), downstrokes.end(), Keypress::sortByTime);

    vector<Keypress> upstrokes = getUpstrokes();
    sort(upstrokes.begin(), upstrokes.end(), Keypress::sortByTime);

    if(downstrokes.size() < 1 || upstrokes.size() < 1) return m; // not valid for finding monographs

    m.reserve(downstrokes.size()); // create space 

    for(int j = 0; j < downstrokes.size(); j++) { 
        int i;
        
        for(i = 0; i < upstrokes.size(); i++) { // get the closest upstroke to the current downstroke
            if(downstrokes.at(j).character == upstrokes.at(i).character) break;
        }

        if(i != upstrokes.size()) { // if an upstroke was found 
            float time = abs(downstrokes.at(j).time - upstrokes.at(i).time); // get the time
            if(time > GRAPH_TIMEOUT) continue; // ignore graphs that are too long

            string code;
            code.push_back(downstrokes.at(j).character); // get the monograph code
            
            if((m).count(code) == 1) { // the graphCode already exists in the map
                (m)[code].addDuration(time);
            } else { // the graphCode has not been seen in the map
                (m)[code] = Graph(time);
            }
            
            upstrokes.erase(upstrokes.begin() + i); // remove the upstroke we just calculated with.  not needed for downstrokes
        }
    }

    return m;
}

// calculates down-up times between each element of keystrokes
unordered_map<string, Graph> Keypresses::calcDU() {
    unordered_map<string, Graph> du;

    vector<Keypress> downstrokes = getDownstrokes();
    sort(downstrokes.begin(), downstrokes.end(), Keypress::sortByTime);

    vector<Keypress> upstrokes = getUpstrokes();
    sort(upstrokes.begin(), upstrokes.end(), Keypress::sortByTime);

    if(downstrokes.size() < 2 || upstrokes.size() < 2) return du; // not valid for finding du graphs

    for(int j = 0; j < downstrokes.size(); j++) { 
        int i;
        
        for(i = 0; i < upstrokes.size(); i++) { // get the closest upstroke to the current downstroke
            if(downstrokes.at(j).time < upstrokes.at(i).time && downstrokes.at(j).character != upstrokes.at(i).character) break;
        }

        if(i != upstrokes.size()) { // if an upstroke was found 
            float time = abs(downstrokes.at(j).time - upstrokes.at(i).time); // get time
            if(time > GRAPH_TIMEOUT) continue; // ignore graphs that are too long

            string code; // get code
            code.push_back(downstrokes.at(j).character);
            code.push_back(upstrokes.at(i).character);

            if((du).count(code) == 1) { // the graphCode already exists in the map
                (du)[code].addDuration(time);
            } else { // the graphCode has not been seen in the map
                (du)[code] = Graph(time);
            }

            upstrokes.erase(upstrokes.begin() + i); // remove the upstroke we just calculated with 
        }
    }

    return du;
}

// calculates up-down times between each element of keystrokes
unordered_map<string, Graph> Keypresses::calcUD() {
    unordered_map<string, Graph> ud;

    vector<Keypress> downstrokes = getDownstrokes();
    sort(downstrokes.begin(), downstrokes.end(), Keypress::sortByTime);

    vector<Keypress> upstrokes = getUpstrokes();
    sort(upstrokes.begin(), upstrokes.end(), Keypress::sortByTime);

    if(downstrokes.size() < 2 || upstrokes.size() < 2) return ud; // not valid for finding ud graphs

    for(int j = 0; j < upstrokes.size(); j++) { 
        int i;
        
        for(i = 0; i < downstrokes.size(); i++) { // get the closest upstroke to the current downstroke
            if(upstrokes.at(j).time < downstrokes.at(i).time) break;
        }

        if(i != downstrokes.size()) { // if a downstroke was found
            float time = abs(upstrokes.at(j).time - downstrokes.at(i).time); // get time
            if(time > GRAPH_TIMEOUT) continue; // ignore graphs that are too long

            string code; // get code
            code.push_back(upstrokes.at(j).character);
            code.push_back(downstrokes.at(i).character);

            if((ud).count(code) == 1) { // the graphCode already exists in the map
                (ud)[code].addDuration(time);
            } else { // the graphCode has not been seen in the map
                (ud)[code] = Graph(time);
            }

            downstrokes.erase(downstrokes.begin() + i); // remove the upstroke we just calculated with 
        }
    }

    return ud;
}

// calculates down-down times between each element of keystrokes
unordered_map<string, Graph> Keypresses::calcDD() {
    unordered_map<string, Graph> dd;

    vector<Keypress> downstrokes = getDownstrokes();
    sort(downstrokes.begin(), downstrokes.end(), Keypress::sortByTime);

    if(downstrokes.size() < 2) return dd; // only execute if there are enough downstrokes to count 

    dd.reserve(downstrokes.size() - 1);

    for(int i = 0; i < downstrokes.size() - 1; i++) {
        float time = abs(downstrokes.at(i).time - downstrokes.at(i + 1).time);
        if(time > GRAPH_TIMEOUT) continue; // ignore graphs that are too long
        string code;
        code.push_back(downstrokes.at(i).character);
        code.push_back(downstrokes.at(i + 1).character);

        if((dd).count(code) == 1) { // the graphCode already exists in the map
            (dd)[code].addDuration(time);
        } else { // the graphCode has not been seen in the map
            (dd)[code] = Graph(time);
        }
    }
    return dd;
}

// calculates up-up times between each element of keystrokes
unordered_map<string, Graph> Keypresses::calcUU() {
    unordered_map<string, Graph> uu;

    vector<Keypress> upstrokes = getUpstrokes();
    sort(upstrokes.begin(), upstrokes.end(), Keypress::sortByTime);

    if(upstrokes.size() < 2) return uu; // only execute if there are enough upstrokes to count 

    uu.reserve(upstrokes.size() - 1);

    for(int i = 0; i < upstrokes.size() - 1; i++) {
        float time = abs(upstrokes.at(i).time - upstrokes.at(i + 1).time);
        if(time > GRAPH_TIMEOUT) continue; // ignore graphs that are too long
        
        string code;
        code.push_back(upstrokes.at(i).character);
        code.push_back(upstrokes.at(i + 1).character);

        if((uu).count(code) == 1) { // the graphCode already exists in the map
            (uu)[code].addDuration(time);
        } else { // the graphCode has not been seen in the map
            (uu)[code] = Graph(time);
        }
    }

    return uu;
}