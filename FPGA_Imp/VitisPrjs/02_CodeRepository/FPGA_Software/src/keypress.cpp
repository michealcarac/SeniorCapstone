/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 12/10/2022 
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

/* OVERLOAD */
// Overloads the << operator (essentially toString())
ostream& operator<<(ostream& os, const Keypress& keypress) {
    os << "{ " << keypress.time << " | " << keypress.character << " | ";
    if(keypress.upDown) os << "Up";
    else                os << "Down";
    os << " }";

    return os;
}

/* FUNCTIONS */
//  sorts in ascending order by time 
bool Keypress::sortByTime(const Keypress& press1, const Keypress& press2) {
    return press1.time < press2.time;
}

// sorts by D/U
bool Keypress::sortByDirection(const Keypress& press1, const Keypress& press2) {
    return (press1.upDown && !press2.upDown);
}