/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/25/2022 
   Purpose: This file implements the Keylogger class.
*/

/* INCLUDES */
#include "keylogger.hpp"

/* CONSTRUCTORS */

// Creates a Keylogger object with defaults:
//      currentMode: Disable
//      currentProfile: 0
//      profiles: loaded from ./profiles
//      presses: Empty Keypresses object
Keylogger::Keylogger() {
    currentMode = Disable;
    currentProfile = 0;
    presses = new Keypresses();

    // get list of profiles
    // load profiles
}