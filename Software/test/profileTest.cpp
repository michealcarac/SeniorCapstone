/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/19/2022 
   Purpose: This file tests the Profile class 
*/

/* INCLUDES */
#include "profile.hpp"
#include <iostream>

/* MAIN */
// run this to test the functionality of the Profile class
int main() {
    cout << endl << "Start of profileTest" << endl << endl;

    Profile* p1 = new Profile(); // default constructor
    Profile* p2 = new Profile("Aaron"); // normal constructor
    Profile* p3 = new Profile("Micheal", Fixed); // defining a modelType

    // Test the << operator overload, each constructor
    cout << "-------------------------------------------------" << endl;
    cout << "Testing overloaded << for p1, p2, p3" << endl;
    cout << *p1 << endl; 
    cout << *p2 << endl;
    cout << *p3 << endl;
    cout << "-------------------------------------------------" << endl;

    // Exit
    delete p1;
    delete p2;
    delete p3;

    cout << endl << "End of profileTest" << endl;
    return 0;
}