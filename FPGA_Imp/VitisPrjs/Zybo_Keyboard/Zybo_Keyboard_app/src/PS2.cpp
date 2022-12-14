// Big thanks to k0nze, the original creator of most of the interrupt code: https://github.com/k0nze/zedboard_pl_to_ps_interrupt_example

#include "PS2.hpp"

static XScuGic InterruptController;      /* Instance of interrupt controller*/

// Easy initialization of PS2
void PS2_Init(u32 baseAddr) {
	/* Enable Timer */
	PS2_EnableTimer(baseAddr);
	/* Enable Keyboard output */
	PS2_EnableKeyboard(baseAddr);
}

// Read Keyboard data register in ASCII format
char* PS2_ReadDataASCII(u32 baseAddr) {
	// Store ascii + \0, static to keep off stack
	static char buf[8];
	// Convert U32 to ASCII
	snprintf(buf,8,"%c",(int)(Xil_In32(baseAddr) & PS2_Data_Mask));
	return buf;
}

// Read Keyboard full data register
u32 PS2_ReadDataU32(u32 baseAddr){
	// Read the key data
	return (Xil_In32(baseAddr) & PS2_Data_Mask);
}

// Read make/break signal from Keyboard
u32 PS2_ReadBreak(u32 baseAddr){
	// Shift the break signal out
	return (Xil_In32(baseAddr) >> PS2_Break_Shift);
}

// Read current time of PS2 Timer
u32 PS2_ReadTime(u32 baseAddr) {
	// Read the entire timer register
	return (Xil_In32(baseAddr+4));
}

// Read the time in a normalized fashion (time*resolution of time to put in terms of seconds)
double PS2_ReadTimeNormalized(u32 baseAddr, double resolution) {
	// Normalize the timer register data
	return (double)PS2_ReadTime(baseAddr)*resolution;
}

// Currently not implemented, enable is hard set to 'on'
void PS2_EnableTimer(u32 baseAddr){
	// Enable timer by setting enable bit high
	Xil_Out32(baseAddr+8,Xil_In32(baseAddr+8) | 0x1);
}

// Currently not implemented, enable is hard set to 'on'
void PS2_DisableTimer(u32 baseAddr){
	// Disable timer by setting enable bit low
	Xil_Out32(baseAddr+8,Xil_In32(baseAddr+8) & ~0x1);
}


// Reset PS2 Timer to 0
void PS2_ResetTimer(u32 baseAddr) {
	// Set reset bit high
	Xil_Out32(baseAddr+8,Xil_In32(baseAddr+8) | 0x2);
	// Set reset bit low
	Xil_Out32(baseAddr+8,Xil_In32(baseAddr+8) & ~0x2);
}

// Enables Keyboard Output
void PS2_EnableKeyboard(u32 baseAddr){
	// Enable keyboard output by setting enable bit high
	Xil_Out32(baseAddr+8,Xil_In32(baseAddr+8) | 0x4);
}
// Disables Keyboard output
void PS2_DisableKeyboard(u32 baseAddr){
	// Disable keyboard by setting enable bit low
	Xil_Out32(baseAddr+8,Xil_In32(baseAddr+8) & ~0x4);
}


//////////////////////////////// INTERRUPT HANDLERS ///////////////////////////////////////////


// Change this to decide what happens when a key is pressed.
void Keyboard_InterruptHandler(void *intc_inst_ptr){
	//char break_data[2];
	//u32 ascii_data = Xil_In32(PS2_Keyboard_Base) & PS2_Data_Mask;
	//itoa(Xil_In32(PS2_Keyboard_Base) >> PS2_Break_Shift,break_data,2);
	// Print ASCII Character
	xil_printf("ascii: %s \n\r",PS2_ReadDataASCII(PS2_Keyboard_Base));
	xil_printf("break: %d \n\r",(int)PS2_ReadBreak(PS2_Keyboard_Base));
	xil_printf("time: %d \n\r",PS2_ReadTime(PS2_Keyboard_Base));
}

// Set up Interrupts for PS2
// priority = 0x00 to 0xF8, 0x00 highest, trigger = 0x3 -> rising edge. Unknown others atm
int PS2_IntSetup(u32 PS2_INT_ID, u32 priority,u32 trigger) {

    int Status;
    XScuGic *IntcInstancePtr = &InterruptController;
    XScuGic_Config *intc_config;

    // get config for interrupt controller
    intc_config = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
    if (NULL == intc_config) {
        return XST_FAILURE;
    }

    // initialize the interrupt controller driver
    Status = XScuGic_CfgInitialize(IntcInstancePtr, intc_config, intc_config->CpuBaseAddress);

    if (Status != XST_SUCCESS) {
        return Status;
    }

    // set the priority of IRQ_F2P[0:0] (highest 0x00, lowest 0xF8) and a trigger for a rising edge 0x3.
    XScuGic_SetPriorityTriggerType(IntcInstancePtr, PS2_INT_ID, priority, trigger);

    // connect the interrupt service routine isr0 to the interrupt controller
    Status = XScuGic_Connect(IntcInstancePtr, PS2_INT_ID, (Xil_ExceptionHandler)Keyboard_InterruptHandler, (void *)&InterruptController);

    if (Status != XST_SUCCESS) {
        return Status;
    }

    // enable interrupts for IRQ_F2P[0:0]
    XScuGic_Enable(IntcInstancePtr, PS2_INT_ID);

// EXAMPLE FOR A 2ND INPUT
//    // set the priority of IRQ_F2P[1:1] to 0xA8 (highest 0x00, lowest 0xF8) and a trigger for a rising edge 0x3.
//    XScuGic_SetPriorityTriggerType(intc_instance_ptr, INTC_INTERRUPT_ID_1, 0xA8, 0x3);
//
//    // connect the interrupt service routine isr1 to the interrupt controller
//    result = XScuGic_Connect(intc_instance_ptr, PS2_INT_ID+1, (Xil_ExceptionHandler)isr1, (void *)&intc);
//
//    if (Status != XST_SUCCESS) {
//        return Status;
//    }
//
//    // enable interrupts for IRQ_F2P[1:1]
//    XScuGic_Enable(intc_instance_ptr, PS2_INT_ID+1);

    // initialize the exception table and register the interrupt controller handler with the exception table
    Xil_ExceptionInit();

    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, IntcInstancePtr);

    // enable non-critical exceptions
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

