/* INCLUDES */
#include <chrono>
#include <iostream>	
#include <thread>
#include <wiringPi.h>

/* NAMESPACE */
using std::cout;
using std::endl;
using std::chrono::milliseconds;
using std::this_thread::sleep_for;

void switchInterrupt(void);	// Function prototype

int main() {
    wiringPiSetup();    // Setup the library
    pinMode(21, INPUT);	// Configure GPIO as an input

    // Cause an interrupt when switch is pressed (0V)
    wiringPiISR(21, INT_EDGE_FALLING, switchInterrupt) ;

    // Main program loop
    while(1) {
        cout << "Pin 21 is currently: " << digitalRead(21) << endl;
        sleep_for(milliseconds(500));
    }

    return 0;
}
// Our interrupt routine
void switchInterrupt(void) {
	cout << "Button pressed" << endl;
}