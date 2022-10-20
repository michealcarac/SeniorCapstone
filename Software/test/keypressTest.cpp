/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/20/2022 
   Purpose: This file tests the functionality of the Keypress struct
*/

/* INCLUDES */
#include "keypress.hpp"
#include <iostream>

/* NAMESPACE */
using std::cout;
using std::endl;

/* DEFINES */

/* MAIN */
// run this to test the functionality of the Keypress struct  
int main() {
    Keypress *k1 = new Keypress(0, false, 'a');
    Keypress *k2 = new Keypress(.5, true, 'a');

    cout << "k1: " << *k1 << endl;
    cout << "k2: " << *k2 << endl << endl;

    // test sortByTime()
    cout << "Testing sortByTime" << endl;
    cout << "k1 is before k2: " << Keypress::sortByTime(*k1, *k2) << endl;
    cout << "k2 is before k1: " << Keypress::sortByTime(*k2, *k1) << endl;
    cout << "k1 is before k1: " << Keypress::sortByTime(*k1, *k1) << endl << endl;

    // test sortByDirection
    cout << "Testing sortByDirection" << endl;
    cout << "k1 and k2 direction sorted: " << Keypress::sortByDirection(*k1, *k2) << endl;
    cout << "k2 and k1 direction sorted: " << Keypress::sortByDirection(*k2, *k1) << endl;
    cout << "k1 and k1 direction sorted: " << Keypress::sortByDirection(*k1, *k1) << endl << endl;

    // Exit
    delete k1;
    delete k2;
    cout << endl << "End of profileTest" << endl << endl;
    return 0;
}