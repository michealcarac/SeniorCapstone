/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/20/2022 
   Purpose: This file describes the Keypress struct.
*/

#ifndef KEYPRESS_H
#define KEYPRESS_H

struct Keypress {
    /* CONSTRUCTORS */
    Keypress(float newTime, bool newUpDown, char newCharacter);

    /* MEMBERS */
    float time; // the time at which the key was pressed
    bool upDown; // was the key an upstroke?
    char character; // the key that was pressed
};

#endif