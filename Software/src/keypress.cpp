/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/20/2022 
   Purpose: This file implements the keypress struct 
*/

/* INCLUDES */
#include "keypress.hpp"

/* CONSTRUCTORS */
Keypress::Keypress(float newTime, bool newUpDown, char newCharacter) {
    time = newTime;
    upDown = newUpDown;
    character = newCharacter;
}