/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 12/14/2022 
   Purpose: This file describes the Keypresses class.  Use this version on the FPGA.
*/

#ifndef KEYPRESSES_H
#define KEYPRESSES_H


/* DEFINES */
#define DEFAULT_SIZE 2000
#define MAX_SIZE     64
#define KEY_PRESSED false
#define KEY_RELEASED true
#define BACKSPACE '\b'
#define ENTER '\r'
#define GRAPH_TIMEOUT 0.5f // if a graph is greater than GRAPH_TIMEOUT, ignore it 

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
using std::to_string;
using std::unordered_map;

class Keypresses {
    public:
        /* CONSTRUCTORS */
        Keypresses(); // default constructor. 
        Keypresses(int initLength); // initializes vectors to given lengths 
    
        /* FUNCTIONS */
        vector<Keypress> getDownstrokes(); // returns a vector of all downstrokes 
        vector<Keypress> getUpstrokes(); // returns a vector of all upstrokes
        unordered_map<string, Graph> calcM(); // calculate M times from keystrokes
        unordered_map<string, Graph> calcDU(); // calculate DU times from keystrokes 
        unordered_map<string, Graph> calcUD(); // calculate UD times from keystrokes 
        unordered_map<string, Graph> calcDD(); // calculate DD times from keystrokes
        unordered_map<string, Graph> calcUU(); // calculate UU times from keystrokes

        /* OVERLOADS */
        friend ostream& operator<<(ostream& os, const Keypresses& presses); // overloads <<

        /* ACCESSORS */
        vector<Keypress> getKeystrokes(); // return a copy of the keystrokes vector

        /* MUTATORS */
        void clearData(); // clears all vectors, returning them to DEFAULT_SIZE
        void clearData(int newSize); // clears all vectors, returning them to newSize
        void appendKeypress(Keypress& keypress); // appends the keypress to keystrokes

    private:
        /* MEMBERS */
        vector<Keypress> keystrokes; // collection of keystrokes
};

#endif
