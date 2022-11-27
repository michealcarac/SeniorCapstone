/* Provides all Interrupts for the system. This file can be edited. */
// Vendor: empyrea.dev
// Author: Micheal Caracciolo
// Date: 11/27/2022
/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Notes: Edit GPIO_InterruptHandler and Keyboard_InterruptHandler
// When trying to find the Interrupt ID's, look in Vivado at the PL-PS interrupts.
// The Interrupt ID will be 61 at bit 0, and has a total range of [91:84] [68:61] for 16 interrupts.
// So, if there is only one interrupt, it will be at ID 61.
// Interrupt Priority = 0xF8 to 0x00, where 0x00 is highest priority.
// Trigger = 0x3 -> rising edge. View xsugic.c for more info.
/////////////////////////////////////////////////////////////////////////////////////////////////////////
#include "Interrupts.hpp"

/* Interrupt Pointers (and no.. they cannot go in the header file. who knows..)*/
static XScuGic InterruptController;
static XGpio   GPIOInterruptController;
XScuGic *myInterruptPtr = &InterruptController;
XScuGic_Config *myIntConfig;
XGpio myGPIOInterruptPtr; /* don't question why this is not a pointer.. XGpio is dumb */


// Change this to decide what happens when a button is pressed.
void GPIO_InterruptHandler(void *IntcInstancePtr){
	int btn_value = 0;

	// Disable GPIO interrupts
	XGpio_InterruptDisable(&myGPIOInterruptPtr, XGPIO_IR_CH1_MASK);

	// Ignore additional button presses
	if ((XGpio_InterruptGetStatus(&myGPIOInterruptPtr) & XGPIO_IR_CH1_MASK) !=XGPIO_IR_CH1_MASK) {
		return;
	}
	btn_value = XGpio_DiscreteRead(&myGPIOInterruptPtr, 1); // Channel 1
	if (btn_value == 1) {   // Case 0
		std::cout<<"BTN1"<<std::endl;
	}
	else if (btn_value == 2) { // Case 1
		std::cout<<"BTN2"<<std::endl;
	}
	else if (btn_value == 4) { // Case 2
		std::cout<<"BTN3"<<std::endl;
	}
	else if (btn_value == 8) { // Case 3
		std::cout<<"BTN4"<<std::endl;
	}
	(void) XGpio_InterruptClear(&myGPIOInterruptPtr, XGPIO_IR_CH1_MASK);
	// Enable GPIO interrupts
	XGpio_InterruptEnable(&myGPIOInterruptPtr, XGPIO_IR_CH1_MASK);
}


// Change this to decide what happens when a key is pressed.
void Keyboard_InterruptHandler(void *IntcInstancePtr){
	//char break_data[2];
	//u32 ascii_data = Xil_In32(PS2_Keyboard_Base) & PS2_Data_Mask;
	//itoa(Xil_In32(PS2_Keyboard_Base) >> PS2_Break_Shift,break_data,2);
	// Print ASCII Character
	xil_printf("ascii: %s \n\r",PS2_ReadDataASCII(PS2_Keyboard_Base));
	xil_printf("break: %d \n\r",(int)PS2_ReadBreak(PS2_Keyboard_Base));
	xil_printf("time: %d \n\r",PS2_ReadTime(PS2_Keyboard_Base));
}


/* Creates the interrupts for PS2 and GPIO */
// Inputs:
//       PS2_INT_ID: The PS2 Interrupt ID from Vivado Zynq Processor PL-PS
//       GPIO_INT_ID: The GPIO Interrupt ID from Vivado Zynq Processor PL-PS
//       GPIO_INT_CHANNEL: The GPIO Channel, 1 or 2
////////////////////////////////////////////////////////////////////////
int Interrupt_Init(u32 PS2_INT_ID,u32 GPIO_INT_ID,u32 GPIO_DEVICE_ID, u32 GPIO_INT_CHANNEL){
	int Status;
	GPIO_Init(&myGPIOInterruptPtr,GPIO_DEVICE_ID);       // GPIO ONLY
	XGpio_SetDataDirection(&myGPIOInterruptPtr, 1,0xFF); // GPIO ONLY Set all buttons to inputs

	// Grab Interrupt Controller Config
	myIntConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	// Initialize Interrupt Controller Driver
	Status = XScuGic_CfgInitialize(myInterruptPtr,myIntConfig,myIntConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS){
		return Status;
	}

	////////////////// GPIO (Has its only Interrupt controller) ////////////////////
	// Connect to Function (GPIO_InterruptHandler)
	Status = XScuGic_Connect(myInterruptPtr,GPIO_INT_ID,(Xil_ExceptionHandler)GPIO_InterruptHandler,(void *)&GPIOInterruptController);
	if (Status != XST_SUCCESS){
		return Status;
	}
	// Enable GPIO interrupts interrupt
	XGpio_InterruptEnable(&myGPIOInterruptPtr,GPIO_INT_CHANNEL);
	XGpio_InterruptGlobalEnable(&myGPIOInterruptPtr);
	// Enable GPIO interrupts in the controller
	XScuGic_Enable(myInterruptPtr,GPIO_INT_ID);
	////////////////////////////////////////////////////////////////////////////////

	////////////////// PS2 (Can use XScuGic) ///////////////////////////////////////
	// (For some reason needed for PS2) Set priority and trigger of Interrupt. (highest 0x00, lowest 0xF8 for priority) and for a rising edge trigger = 0x3
	 XScuGic_SetPriorityTriggerType(myInterruptPtr, PS2_INT_ID, 0x00, 0x3);
	// Connect to Function (Keyboard_InterruptHandler)
	Status = XScuGic_Connect(myInterruptPtr, PS2_INT_ID, (Xil_ExceptionHandler)Keyboard_InterruptHandler, (void *)&InterruptController);
	if (Status != XST_SUCCESS) {
		return Status;
	}
	// Enable PS2 Interrupt
	XScuGic_Enable(myInterruptPtr, PS2_INT_ID);
	////////////////////////////////////////////////////////////////////////////////

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,(Xil_ExceptionHandler) XScuGic_InterruptHandler,myInterruptPtr);
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

