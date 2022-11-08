/* Project: Clarkson University Capstone
   Writer(s): Aaron R. Jones
   Last Edited: 11/8/2022
   Purpose: This file tests the use of a real keyboard for input to the system, 
            including profile creation, training, and testing.  Utilizes keylogger.cpp
   Adapted From: https://blog.robertelder.org/detect-keyup-event-linux-terminal/
*/

#include "keylogger.hpp"

/* NAMESPACE */
using std::cout;
using std::endl;

int main() {
    cout << "Start of keyloggerTest." << endl << endl;

    // create the keylogger
    Keylogger *logger = new Keylogger();

    while(true) {
        string input; 

        // Simulate the buttons
        cout << endl;
        cout << "Currently in " << logger->getModeAsString() << " with " << logger->getCurrentProfile()->getName() << endl;
        cout << "   To display the current profile, enter d" << endl;
        cout << "   To run with current settings, enter r" << endl;
        cout << "   To toggle the profile, enter p" << endl;
        cout << "   To toggle the mode, enter m" << endl;
        cout << "   To exit the system, enter e" << endl;

        cin >> input;
        if(input == "r") { // run based on current settings
            switch(logger->getCurrentMode()) {
                case FixedTrain: // run the training algorithm
                    cout << "Close the X11 Window to stop training." << endl;
                    logger->runTrainPi();
                    break;
                case FixedTest:
                    cout << "Close the X11 Window to stop authentication." << endl;
                    logger->runAuthPi();
                    break;
                case Disable:
                    cout << "In Disable mode, nothing to do" << endl;
                    continue;
            }
        }
        if(input == "d") { // display profile
            cout << *logger->getCurrentProfile() << endl;
            continue;
        }
        if(input == "p") { // move profiles
            logger->nextProfile();
            continue;
        }
        if(input == "m") { // move modes
            logger->nextMode();
            continue;
        }
        if(input == "e") { // exit the system
            break;
        }

    }

    // closeout
    delete logger;
    cout << endl << "End of keyloggerTest" << endl;
}