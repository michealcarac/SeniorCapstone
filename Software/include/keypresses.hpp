/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 11/7/2022 
   Purpose: This file describes the Keypresses class.
*/

#ifndef KEYPRESSES_H
#define KEYPRESSES_H

/* DEFINES */
#define DEFAULT_SIZE 20
#define KEY_PRESSED false
#define KEY_RELEASED true
#define BACKSPACE 65288
#define L_SHIFT 65505
#define R_SHIFT 65506
#define ENTER 65293
#define GRAPH_TIMEOUT 0.5f // if a graph is greater than .5 seconds, ignore it 

/* INCLUDES */
#include <string>
#include <vector>
#include <iostream>
#include <algorithm>
#include <unordered_map>
#include "graph.hpp"
#include "keypress.hpp"

/* NAMESPACE */
using std::abs;
using std::sort;
using std::endl;
using std::string;
using std::vector;
using std::ostream;
using std::iterator;
using std::unordered_map;

class Keypresses {
    public:
        /* CONSTRUCTORS */
        Keypresses(); // default constructor. 
        Keypresses(int initLength); // initializes vectors to given lengths 
    
        /* FUNCTIONS */
        vector<Keypress> getDownstrokes(); // returns a vector of all downstrokes 
        vector<Keypress> getUpstrokes(); // returns a vector of all upstrokes
        unordered_map<string, Graph> calcDD(); // calculate DU times from keystrokes into dd
        // vector<float> mean(); // returns the average of the DU, UD, DD, UU times

        /* OVERLOADS */
        friend ostream& operator<<(ostream& os, const Keypresses& presses); // overloads <<

        /* ACCESSORS */
        vector<Keypress> getKeystrokes(); // return a copy of the keystrokes vector

        /* MUTATORS */
        void clearData(); // clears all vectors, returning them to DEFAULT_SIZE
        void clearData(int newSize); // clears all vectors, returning them to newSize
        void appendKeypress(Keypress& keypress); // appends the keypress to keystrokes

    private:
        /* FUNCTIONS */
        // void calcM(); // calculate M times from keystrokes into m
        // void calcDU(); // calculate DU times from keystrokes into du
        // void calcUD(); // calculate DU times from keystrokes into ud
        // void calcUU(); // calculate DU times from keystrokes into uu

        /* MEMBERS */
        vector<Keypress> keystrokes; // collection of keystrokes
};

#endif