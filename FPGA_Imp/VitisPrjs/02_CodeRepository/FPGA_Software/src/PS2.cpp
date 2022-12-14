/* PS2 Helper Functions */
// Vendor: empyrea.dev
// Author: Micheal Caracciolo
// Date: 11/27/2022
/////////////////////////////////////////////////////////////////////////////////////////////////////////

#include "PS2.hpp"

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

// Disable PS2 Timer
void PS2_EnableTimer(u32 baseAddr){
	// Enable timer by setting enable bit high
	Xil_Out32(baseAddr+8,Xil_In32(baseAddr+8) | 0x1);
}

// Enable PS2 Timer
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

