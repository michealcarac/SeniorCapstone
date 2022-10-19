/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/19/2022 
   Purpose: This file tests the Profile class 
*/

/* INCLUDES */
#include "profile.hpp"
#include <iostream>

/* NAMESPACE */
using std::cout;
using std::endl;

/* MAIN */
// run this to test the functionality of the Profile class
int main() {
    Profile* p1 = new Profile(); // default constructor
    Profile* p2 = new Profile("Aaron"); // normal constructor
    Profile* p3 = new Profile("Micheal", Fixed); // defining a modelType

    // Test the << operator overload, each constructor
    cout << p1 << endl; 
    cout << p2 << endl;
    cout << p3 << endl;


    // Exit
    cout << endl << "End of profileTest" << endl;
    return 0;
}