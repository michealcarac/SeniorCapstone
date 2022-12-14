#include "xparameters.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_types.h"
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <sstream>

// Interrupts
#include "xscugic.h"
#include "xil_exception.h"

// Keyboard
#define PS2_Keyboard_Base XPAR_AXI_PS2_KEYBOARD_0_S00_AXI_BASEADDR
#define PS2_Data_Mask 0x7F
#define PS2_Break_Shift 7

// Interrupts
#define PS2_INT_DEVICE_ID XPAR_SCUGIC_SINGLE_DEVICE_ID
#define PS2_INT_INTERRUPT_ID  61 // IRQ_F2P[0], From Vivado. Interrupts [15:0] for IDs [91:84] [68:61]


// Interrupt setup, INT_ID = Interrupt ID from Vivado, Priority = 0xF8 to 0x00, where 0x00 is highest priority.
// Trigger = 0x3 -> rising edge. View xsugic.c for more info.
int PS2_IntSetup(u32 PS2_INT_ID, u32 priority,u32 trigger);
void Keyboard_InterruptHandler(void *InstancePtr);


// Keyboard Helper Functions
void PS2_Init(u32 baseAddr);
char* PS2_ReadDataASCII(u32 baseAddr);
u32 PS2_ReadDataU32(u32 baseAddr);
u32 PS2_ReadBreak(u32 baseAddr);
u32 PS2_ReadTime(u32 baseAddr);
double PS2_ReadTimeNormalized(u32 baseAddr, double resolution);
void PS2_ResetTimer(u32 baseAddr);
void PS2_EnableTimer(u32 baseAddr);
void PS2_DisableTimer(u32 baseAddr);
void PS2_EnableKeyboard(u32 baseAddr);
void PS2_DisableKeyboard(u32 baseAddr);
