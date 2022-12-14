/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/20/2022 
   Purpose: This file tests the functionality of the Keypresses class
*/

/* INCLUDES */
#include "keypresses.hpp"
#include <iostream>

/* NAMESPACE */
using std::cout;
using std::endl;

/* DEFINES */

/* MAIN */
// run this to test the functionality of the Keypress struct  
int main() {
    Keypresses *presses = new Keypresses();
    
    // Initial Condition
    cout << "presses after construction: " << endl;
    cout << *presses;
    cout << endl;

    // Adding some keystrokes
    // Tests appendKeypress() and << overload
    Keypress *keypress = new Keypress(0.1, false, 'a'); // downstroke of a
    presses->appendKeypress(*keypress);
    keypress = new Keypress(0.3, true, 'a'); // upstroke of a
    presses->appendKeypress(*keypress);
    keypress = new Keypress(0.5, false, 'b'); // downstroke of b
    presses->appendKeypress(*keypress);
    keypress = new Keypress(0.6, false, 'c'); // downstroke of c
    presses->appendKeypress(*keypress);
    keypress = new Keypress(0.8, true, 'b'); // upstroke of c
    presses->appendKeypress(*keypress);
    keypress = new Keypress(1.1, true, 'c'); // upstroke of c
    presses->appendKeypress(*keypress);
    keypress = new Keypress(1.3, false, 'd'); // downstroke of d
    presses->appendKeypress(*keypress);

    cout << "After adding keystrokes: " << endl;
    cout << *presses;
    cout << endl << endl;

    // test getKeystrokes
    cout << "Testing getKeystrokes():" << endl;
    vector<Keypress> strokes = presses->getKeystrokes();
    for(int i = 0; i < strokes.size(); i++) {
        cout << "   " << strokes.at(i) << endl;
    }
    cout << endl;

    // test getDownstrokes
    cout << "Testing getDownstrokes():" << endl;
    vector<Keypress> downstrokes = presses->getDownstrokes();
    for(int i = 0; i < downstrokes.size(); i++) {
        cout << "   " << downstrokes.at(i) << endl;
    }
    cout << endl;

    // test getUpstrokes
    cout << "Testing getUpstrokes():" << endl;
    vector<Keypress> upstrokes = presses->getUpstrokes();
    for(int i = 0; i < upstrokes.size(); i++) {
        cout << "   " << upstrokes.at(i) << endl;
    }
    cout << endl;

    /* NO LONGER IN THIS CLASS
    // test M
    cout << "Testing getM() and calcM():" << endl;
    vector<float> mTimes = presses->getM();
    for(int i = 0; i < mTimes.size(); i++) {
        cout << "   " << mTimes.at(i) << endl;
    }
    cout << endl;

    // test DU
    cout << "Testing getDU() and calcDU():" << endl;
    vector<float> duTimes = presses->getDU();
    for(int i = 0; i < duTimes.size(); i++) {
        cout << "   " << duTimes.at(i) << endl;
    }
    cout << endl;

    // test UD
    cout << "Testing getUD() and calcUD():" << endl;
    vector<float> udTimes = presses->getUD();
    for(int i = 0; i < udTimes.size(); i++) {
        cout << "   " << udTimes.at(i) << endl;
    }
    cout << endl;

    // test DD
    cout << "Testing getDD() and calcDD():" << endl;
    vector<float> ddTimes = presses->getDD();
    for(int i = 0; i < ddTimes.size(); i++) {
        cout << "   " << ddTimes.at(i) << endl;
    }
    cout << endl;

    // test UU
    cout << "Testing getUU() and calcUU():" << endl;
    vector<float> uuTimes = presses->getUU();
    for(int i = 0; i < uuTimes.size(); i++) {
        cout << "   " << uuTimes.at(i) << endl;
    }
    cout << endl;

    // test mean
    cout << "Testing mean() [and all calcXX functions]" << endl;
    vector<float> averages = presses->mean();
    cout << "   M:  " << averages.at(0) << endl;
    cout << "   DU: " << averages.at(1) << endl;
    cout << "   UD: " << averages.at(2) << endl;
    cout << "   DD: " << averages.at(3) << endl;
    cout << "   UU: " << averages.at(4) << endl;
    cout << endl;

    */ 

    // test clearData
    cout << "Testing clearData():" << endl;
    presses->clearData();
    cout << *presses;
    cout << endl << endl;

    // Exit
    delete presses;
    delete keypress;
    cout << endl << "End of profileTest" << endl << endl;
    return 0;
}