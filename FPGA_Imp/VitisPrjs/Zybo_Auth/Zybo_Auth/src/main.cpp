/* Project: Clarkson University Capstone
   Writer(s): Aaron R. Jones
   Last Edited: 12/14/2022
   Purpose: This file tests the use of a real keyboard for input to the system, 
            including profile creation, training, and testing.  Utilizes keylogger.cpp.
            Utilizes interrupt-based buttons.
            Run this file for the FPGA
   Adapted From: https://blog.robertelder.org/detect-keyup-event-linux-terminal/
*/

/* INCLUDES */
#include "keylogger.hpp"
#include "Interrupts.hpp"
#include "GPIO.hpp"
#include "LCD.hpp"
#include "PS2.hpp"

/* NAMESPACE */
using std::cout;
using std::endl;

/* FUNCTIONS */
void runModes(Modes currentMode); // determines which algorithms to run

///* INTERRUPTS */
//void btn0(); // button 0 interrupt
//void btn1(); // button 1 interrupt
//void btn2(); // button 2 interrupt
//void btn3(); // button 3 interrupt
//void keyboard(); // keyboard interrupt

/* INPUT TRACKING VARIABLES */
int numAllowed = 0;
int numTries = 0;
int numEntries = 0;
bool lastDirection = KEY_PRESSED;
bool deleteActive = false;
bool createActiveName = false, createActivePassword = false;
string newName;
string newPassword;
string runningInput;

/* KEYLOGGER VARIABLES */
vector<float> scores;
Keylogger *logger;



/* MAIN */
int main() {
	// introduction
	cout << "" << endl;
	cout << "Welcome to CEKP: Hardware Based Keylogger (FPGA Edition)" << endl;
	cout << "Github: https://github.com/michealcarac/SeniorCapstone" << endl;
	cout << "Created by Micheal Caracciolo, Aaron Jones, and Nick Summerville" << endl;
	cout << "" << endl;
	cout << "Button Functionality" << endl;
	cout << "BTN0 - Re-Enables Keyboard-PC interface if denied access" << endl;
	cout << "BTN1 - Cycles through available Modes (FixedTrain, FixedTest, Disable)" << endl;
	cout << "BTN2 - Cycles through available Profiles (Create Profile, Delete Profile, user created profiles)" << endl;
	cout << "BTN3 - Acts as a Select. Press when selection is made and ready to be inputted into system" << endl;
	cout << "" << endl;

 	// create the keylogger
	logger = new Keylogger();

    // initialize everything'
	cout << "System Starting.." << endl;
    PS2_Init(PS2_Keyboard_Base); // Initialize PS/2
    cout << "PS/2 Initialized" << endl;
    PS2_ResetTimer(PS2_Keyboard_Base); // Reset PS/2 Timer
    cout << "PS/2 Timer Reset" << endl;
    PS2_EnableTimer(PS2_Keyboard_Base); // Enable PS/2 Timer
    cout << "PS/y2 Timer Enabled" << endl;
    LCD_WriteTop(LCD_Base, logger->getModeAsString()); // Write to top row of LCD
    LCD_WriteBottom(LCD_Base, logger->getCurrentProfile()->getName()); // Write to bottom row of LCD
    cout << "LCD Written to" << endl;
    LCD_Refresh(LCD_Base); // Refreshes LCD (Technically not needed as the write functions have a built-in refresh)
    cout << "LCD Refreshed" << endl;
    Interrupt_Init(PS2_INTERRUPT_ID, GPIO_0_INTERRUPT_ID, GPIO_0_DEVICE_ID,GPIO_0_CHANNEL_ID); // Initialize PS/2 and Button Interrupts
    cout << "System Ready!" << endl;
    
	// System Status
    cout << "Current Mode: " << logger->getModeAsString() << endl;
    cout << "Current Profile: " << logger->getCurrentProfile()->getName() << endl;

    // set up runningInput to capture keypresses
    runningInput = "";

    while (true) { // loop forever, DONT PUT ANYTHING IN HERE
    }
}

// handle button interrupts
// BTN0: Re-enable computer-keyboard interface (and turn off LED)
void btn0() {
    PS2_EnableKeyboard(PS2_Keyboard_Base);
    cout << "Re-Enabled Keyboard-PC Interface" << endl;
    // turn off LED if applicable 
}

// BTN1: Go to the next system mode.  If leaving the Train mode, compute trained graphs and save all profiles.
void btn1() {
    if(logger->getCurrentMode() == FixedTrain && numEntries != 0) {
        logger->runTrain();
        logger->saveAllProfiles();
        numEntries = 0;
    }
    PS2_ResetTimer(PS2_Keyboard_Base);
    runningInput = "";
    logger->nextMode();
    LCD_WriteTop(LCD_Base, logger->getModeAsString());
    LCD_WriteBottom(LCD_Base, logger->getCurrentProfile()->getName());
    LCD_Refresh(LCD_Base);
   cout << "Current Mode: " << logger->getModeAsString() << endl;
}

// BTN2: Go to the next profile.  Clear running input/keypresses
void btn2() { 
    string toDisplay = logger->nextProfile();
    LCD_WriteBottom(LCD_Base, toDisplay);
    LCD_Refresh(LCD_Base);
    logger->clearKeypresses();
    PS2_ResetTimer(PS2_Keyboard_Base);
    runningInput = "";
    cout << "Selected Profile: " << toDisplay << endl;
}

// BTN3: Select button for create/delete profile.  Utilizes global booleans for states
// TODO: make this work with enum
void btn3() {
    if(deleteActive) { // if we're deleting a profile, delete the one currently displayed on the LCD 
        logger->removeCurrentProfile();
        LCD_WriteTop(LCD_Base, logger->getModeAsString());
        LCD_WriteBottom(LCD_Base, logger->getCurrentProfile()->getName());
        LCD_Refresh(LCD_Base);
        cout << "Profile deleted." << endl;
        deleteActive = false;
        return;
    }
    if(createActiveName) { // if we're creating a profile, and have entered the name 
        newName = runningInput;
        LCD_WriteTop(LCD_Base, "Enter a Password");
        LCD_WriteBottom(LCD_Base, "");
        LCD_Refresh(LCD_Base);
        runningInput = "";
        createActiveName = false;
        createActivePassword = true;
        cout << "Enter Profile Password" << endl;
        return;
    }
    if(createActivePassword) { // if we're creating a profile, and have entered the password
        newPassword = runningInput;
        logger->clearKeypresses();
        runningInput = "";
        FixedModelData *f = new FixedModelData(newPassword);
        Profile *p = new Profile(newName, Fixed,f );
        logger->addProfile(p);
        LCD_WriteTop(LCD_Base, logger->getModeAsString());
        LCD_WriteBottom(LCD_Base, logger->getCurrentProfile()->getName());
        LCD_Refresh(LCD_Base);
        cout << *logger->getCurrentProfile() << endl;
        createActivePassword = false;
        cout << "Current Mode: " << logger->getModeAsString() << endl;
        cout << "Current Profile: " << logger->getCurrentProfile()->getName() << endl;
    }
    if(logger->getCurrentProfile()->getName() == "Delete Profile") { // if we decide to delete a profile
        deleteActive = true;
        logger->setCurrentProfile(0);
        LCD_WriteTop(LCD_Base, "Select to Delete");
        LCD_WriteBottom(LCD_Base, logger->getCurrentProfile()->getName());
        LCD_Refresh(LCD_Base);
        cout << "Select Profile to Delete" << endl;
        return;
    }
    if(logger->getCurrentProfile()->getName() == "Create Profile") { // if we want to create a profile 
        LCD_WriteTop(LCD_Base, "Enter a name");
        LCD_WriteBottom(LCD_Base, "");
        LCD_Refresh(LCD_Base);
        createActiveName = true;
        runningInput = "";
        cout << "Enter Profile Name" << endl;
        return;
    }
}

void keyboard() {
    // get keystroke
    // add to runningInput
    // add to logger
    // check runningInput in while(true) in main()

    Keypress *k;
    char key = *PS2_ReadDataASCII(PS2_Keyboard_Base);
    float time = (float) PS2_ReadTimeNormalized(PS2_Keyboard_Base, .0001);
    bool direction = PS2_ReadBreak(PS2_Keyboard_Base); // true means pressed

    //cout << key << endl; // MC -> DEBUGGING
    //cout << time << endl; // MC -> DEBUGGING
    //cout << direction << endl; // MC -> DEBUGGING

    if(key == BACKSPACE && runningInput.length() != 0 && direction == KEY_PRESSED) { // handle backspace
        runningInput.pop_back();
        if(createActiveName || createActivePassword) {
            LCD_WriteBottom(LCD_Base, runningInput);
            LCD_Refresh(LCD_Base);
        }
        cout.flush();
        cout << "\b \b"; // remove the character from the console
        cout.flush();
        return;
    } else if (key == ENTER && direction == KEY_PRESSED) { // handle enter
        cout << endl; // built-in flush
        runningInput = "";
        return;
    } else if (key == BACKSPACE && direction == KEY_PRESSED) { // handle backspace when console has nothing to delete, but host pc does
        return;
    } // TODO: throw out shift/caps (return).  #define the codes inside keypresses.hpp and use here.

    // handle runningInput
	if (logger->getCurrentMode() != Disable) {
		if(runningInput.length() == logger->getCurrentProfile()->getPassword().length() && runningInput.length() != 0 && logger->getCurrentMode() == FixedTest && !deleteActive && !createActiveName && !createActivePassword && direction == KEY_PRESSED)
			runningInput = runningInput.substr(1, runningInput.length()); //remove first character when overflowing
	}
	if (direction == KEY_PRESSED)
		runningInput += key; // add the input key to the runningInput
    
    // have cout mirror the current input 
    //cout << key;
    //cout.flush();

    // handle display on LCD
    if((createActiveName || createActivePassword) && direction == KEY_PRESSED) {
        LCD_WriteBottom(LCD_Base, runningInput);
        LCD_Refresh(LCD_Base);
    }
    k = new Keypress(time, direction, key);
    logger->appendKeypress(k);
    delete k;
    lastDirection = direction;

    if (direction == KEY_PRESSED)
    	cout << "Running Input: " << runningInput << endl;

    // Catch the password while text is going through the system
    if(lastDirection == KEY_RELEASED) { // if we've released the key, and the password has been entered
		if (!createActivePassword && !createActiveName && logger->getCurrentMode() != Disable) {
			if(runningInput == logger->getCurrentProfile()->getPassword()) { // if the password has been entered
				runModes(logger->getCurrentMode()); // do mode actions on upstrokes only
				runningInput = ""; // reset running input after modes are run
			}
		}
	}
}

// run modes
void runModes(Modes currentMode) {
    switch(currentMode) { 
        case Disable: break; // do nothing if disabled--this shouldn't be called anyway
        case FixedTrain: // if we're training, update lcd text.  Train algorithm is run at the end 
            // sleep_for(milliseconds(500)); // I don't think this is needed // sleep for .5 seconds, forcing a large digraph time 
            cout << endl << "Password entered: " << runningInput << " Entry " << ++numEntries << endl;
            LCD_WriteTop(LCD_Base, logger->getModeAsString() + " " + to_string(numEntries));
            LCD_Refresh(LCD_Base);
            runningInput = "";
            break;
        case FixedTest: // if we're authenticating, and have entered the password.  Calculate the score, make authentication decision.  
            numTries++;
            float score = logger->runAuth(); // calculate score
            float threshold = logger->getCurrentThreshold(); // get the threshold 
            scores.push_back(score); // log the score for stats on shutdown

            cout << ", Score: " << score; // print the score (debugging)
            if(score <= threshold) { // make keyboard-computer interface decision
                numAllowed++;
                cout << ", Entry allowed" << endl;
            } else { // cut off the keyboard-computer interface 
                PS2_DisableKeyboard(PS2_Keyboard_Base);
                // turn on LED if applicable 
                cout << ", Entry denied" << endl;
            }
            break;
    }
}
