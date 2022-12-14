#include "PS2.hpp"

u32* PS2_Base = (u32*) PS2_Keyboard_Base;

void sleep(int n);

int main()
{
	/* Start Self Test */
	xil_printf("\n\rSELF TEST \n\r");
	/* Read the ID inside of the PS2 IP Block Register 4 */
	/* Should read out "PS2 " */
	for (int i = 0; i < 4; i++){
		xil_printf("%c",*(PS2_Base+3) >> (24-i*8)); // Alternative way of reading the registers. This reads Register 4.
	}
	PS2_Init(PS2_Keyboard_Base);
	xil_printf("\n\rPart 1: Collecting Keystrokes\n\r");
	xil_printf("\n\rPress any Key, wait 5 seconds\n\r");
	sleep(5); // 5 seconds
	std::cout << "\n\rascii data: " <<PS2_ReadDataASCII(PS2_Keyboard_Base) <<  std::endl;
	xil_printf("u32 data: %d \n\r",PS2_ReadDataU32(PS2_Keyboard_Base));
	xil_printf("u32 break: %d \n\r",PS2_ReadBreak(PS2_Keyboard_Base));
	xil_printf("u32 time: %d \n\r",PS2_ReadTime(PS2_Keyboard_Base));
	std::cout << "float time: " << PS2_ReadTimeNormalized(PS2_Keyboard_Base,.0001) << std::endl;

	xil_printf("\n\rPart 2: Resetting the Timer\n\r");

	PS2_ResetTimer(PS2_Keyboard_Base);
	xil_printf("\n\rTYPE, prints in 2 seconds\n\r");

	sleep(2); // 2 seconds
	std::cout << "\n\rascii data: " <<PS2_ReadDataASCII(PS2_Keyboard_Base) <<  std::endl;
	xil_printf("u32 data: %d \n\r",PS2_ReadDataU32(PS2_Keyboard_Base));
	xil_printf("u32 break: %d \n\r",PS2_ReadBreak(PS2_Keyboard_Base));
	xil_printf("u32 time: %d \n\r",PS2_ReadTime(PS2_Keyboard_Base));
	std::cout << "float time: " << PS2_ReadTimeNormalized(PS2_Keyboard_Base,.0001) << std::endl;

	xil_printf("\n\rSELF TEST COMPLETE \n\r");
	/* Finish Self Test */

	// Enable interrupts
	// ID 61, Highest Priority, Rising Edge
	PS2_IntSetup(PS2_INT_INTERRUPT_ID,0x00,0x3);

	xil_printf("\n\rInterrupts are now enabled\n\r");

	while(1){
		// Infinite Loop of Nothingness
	}

    return 0;
}



void sleep(int n) {
	for(int j=0;j<n;j++){
		//Assuming 100MHz clock, delay for 1sec
		for(int i=0;i<(100000000);i++);
	}
}
