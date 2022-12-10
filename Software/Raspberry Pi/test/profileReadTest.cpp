/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/19/2022 
   Purpose: This file tests the ability to create a Profile from a .txt file 
*/

/* INCLUDES */
#include "profile.hpp"
#include <iostream>

/* DEFINES */
#define PROFILE_SAVE_DIR "./testOutput"

/* MAIN */
// run this to test the functionality of the Profile class  
int main() {
    Profile *p1 = Profile::readProfile(PROFILE_SAVE_DIR, "profileWriteTest.txt");

    cout << *p1 << endl;

    cout << endl << "End of profileTest" << endl << endl;
    return 0;
}