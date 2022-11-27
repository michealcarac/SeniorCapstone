#include "xparameters.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_types.h"
#include <stdlib.h>
#include <string>
#include <sleep.h>
#include "LCD.hpp"

// Addresses
#define LCD_I2C_Base 0x43C00000
// LCD Format:
// Reg8 Reg7 Reg6 Reg5
// Reg4 Reg3 Reg2 Reg1
#define LCD_I2C_Reg0 0  // Control, First two bits: Refresh Enable
#define LCD_I2C_Reg1 4  // Data Register (Bottom Right)
#define LCD_I2C_Reg2 8  // Data Register
#define LCD_I2C_Reg3 12 // Data Register
#define LCD_I2C_Reg4 16 // Data Register (Bottom left)
#define LCD_I2C_Reg5 20 // Data Register (Top Right)
#define LCD_I2C_Reg6 24 // Data Register
#define LCD_I2C_Reg7 28 // Data Register
#define LCD_I2C_Reg8 32 // Data Register (Top left)


int main() {
//	string string1 = "im senior";
//	string string2 = "im NOT(senior)";
//	// Takes roughly a second to write to LCD fully (Due to internal delays that can be removed)
//	LCD_Write32(LCD_I2C_Base,string1);
//	LCD_Refresh(LCD_I2C_Base);
//	sleep(1);
//	LCD_Write32(LCD_I2C_Base,string2);
//	LCD_Refresh(LCD_I2C_Base);
//	sleep(1);
//	LCD_WriteTop(LCD_I2C_Base,string1);
//	LCD_Refresh(LCD_I2C_Base);
//	sleep(1);
//	LCD_WriteBottom(LCD_I2C_Base,string2);
//	LCD_Refresh(LCD_I2C_Base);

	string string3;
	std::cout << "Write to LCD from Serial Window" << std::endl;
	while(1){
		// Data from UART 115200
		std::cin >> string3;
		LCD_Write32(LCD_I2C_Base,string3);
		//LCD_Refresh(LCD_I2C_Base); // Now has refresh built into writes
	}



}


void sleep(int n) {
	for(int j=0;j<n;j++){
		//Assuming 100MHz clock, delay for 1sec
		for(int i=0;i<100000000;i++);
	}
}
