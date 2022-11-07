///////////////////////////////////////////////////////////////////////////////////////////
// File: UART2USB.ino
// Includes: Keyboard.h
// Developer: Micheal Caracciolo
// Vendor: empyrea.dev
// Library: Arduino
// Data: 11/06/2022
// Info:
//      Built for an Arduino Due
//      Takes UART Data at 9600 Baud and mimics a Keyboard HID Device, sending keystrokes. 
//      All Serial in data is connected to the TX1 and RX1 ports on the Arduino. 
//      Built off: https://docs.arduino.cc/built-in-examples/usb/KeyboardSerial
///////////////////////////////////////////////////////////////////////////////////////////

#include "Keyboard.h"

void setup() {
  // open the serial port:
  Serial1.begin(9600); //Serial 1 for tx/rx ports
  // initialize control over the keyboard:
  Keyboard.begin();
}

void loop() {
  // check for incoming serial data:
  if (Serial1.available() > 0) {
    // Read Character from Serial
    char inChar = Serial1.read();
    // Convert to ASCII Value 
    int inData = (int)inChar; 
    // If special, it will be picked up here.
    switch (inData) {
      case 10:  // Enter
        Keyboard.print("\n");
        break;
      case 13:  // Enter
        Keyboard.print("\n");
        break;
      case 127: // Backspace
        Keyboard.print("\b");
        break;
      default:
        Keyboard.print(inChar);
        break;
    }
  }
}
