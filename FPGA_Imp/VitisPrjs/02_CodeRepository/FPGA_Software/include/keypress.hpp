/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/20/2022 
   Purpose: This file describes the Keypress struct.
*/

#ifndef KEYPRESS_H
#define KEYPRESS_H

/* INCLUDE */
#include <iostream>

/* NAMESPACE */
using std::ostream;

struct Keypress {
    /* CONSTRUCTORS */
    Keypress(float newTime, bool newUpDown, char newCharacter);

    /* FUNCTIONS */
    static bool sortByTime(const Keypress& press1, const Keypress& press2); // sorts two keypresses by time
    static bool sortByDirection(const Keypress& press1, const Keypress& press2); // sorts keypresses by upDown

    /* OVERLOAD */
    friend ostream& operator<<(ostream& os, const Keypress& keypress); // overloads the << operator for the struct

    /* MEMBERS */
    float time; // the time at which the key was pressed
    bool upDown; // was the key an upstroke?
    char character; // the key that was pressed
};

#endif