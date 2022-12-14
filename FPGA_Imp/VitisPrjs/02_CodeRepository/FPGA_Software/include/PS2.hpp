/* PS2 Header File */
// Vendor: empyrea.dev
// Author: Micheal Caracciolo
// Date: 11/27/2022
/////////////////////////////////////////////////////////////////////////////////////////////////////////

#include "xparameters.h"
#include "xil_printf.h"
#include <stdlib.h>
#include <stdio.h>
#include <iostream>

// Interrupts
#include "xscugic.h"
#include "xil_exception.h"

// Keyboard
#define PS2_Keyboard_Base XPAR_AXI_PS2_KEYBOARD_0_S00_AXI_BASEADDR
#define PS2_Data_Mask 0x7F
#define PS2_Break_Shift 7

// Interrupts, editable
#define PS2_INT_DEVICE_ID XPAR_SCUGIC_SINGLE_DEVICE_ID
#define PS2_INTERRUPT_ID  61 // IRQ_F2P[0], From Vivado. Interrupts [15:0] for IDs [91:84] [68:61]


// Keyboard Helper Functions
void PS2_Init(u32 baseAddr);
char* PS2_ReadDataASCII(u32 baseAddr); /* Read keyboard data in ascii */
u32 PS2_ReadDataU32(u32 baseAddr);     /* Read keyboard data in U32 */
u32 PS2_ReadBreak(u32 baseAddr);       /* Read keyboard break     */
u32 PS2_ReadTime(u32 baseAddr);        /* Read keyboard timer     */
double PS2_ReadTimeNormalized(u32 baseAddr, double resolution);  /* Read keyboard timer normalized with resolution */
void PS2_ResetTimer(u32 baseAddr);     /* Reset keyboard timer    */
void PS2_EnableTimer(u32 baseAddr);    /* Enable keyboard timer   */
void PS2_DisableTimer(u32 baseAddr);   /* Disable keyboard timer  */
void PS2_EnableKeyboard(u32 baseAddr); /* Enable keyboard output  */
void PS2_DisableKeyboard(u32 baseAddr);/* Disable keyboard output */

