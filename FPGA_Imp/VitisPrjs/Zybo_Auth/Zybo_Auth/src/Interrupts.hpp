/* Interrupt Header File */
// Vendor: empyrea.dev
// Author: Micheal Caracciolo
// Date: 11/27/2022
/////////////////////////////////////////////////////////////////////////////////////////////////////////

#include "xscugic.h"   /* GIC Control */
#include "xil_exception.h" /* Exceptions */
#include "GPIO.hpp"
#include "LCD.hpp"


/* INTERRUPTS */
void btn0(); // button 0 interrupt
void btn1(); // button 1 interrupt
void btn2(); // button 2 interrupt
void btn3(); // button 3 interrupt
void keyboard(); // keyboard interrupt
int Interrupt_Init(u32 PS2_INT_ID,u32 GPIO_INT_ID,u32 GPIO_DEVICE_ID, u32 GPIO_INT_CHANNEL); /* Interrupt Initialization */
void Keyboard_InterruptHandler(void *IntcInstancePtr); /* Keyboard Interrupt Handler */
void GPIO_InterruptHandler(void *IntcInstancePtr); /* GPIO Interrupt Handler */
