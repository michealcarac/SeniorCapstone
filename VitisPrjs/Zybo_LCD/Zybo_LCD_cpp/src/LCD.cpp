#include "LCD.hpp"


///////////////////////////////////////////////////////////////////////////////////////////
// Function: LCD_Write32
// Type: void
// Inputs:
//        BaseAddr: Start Address for LCD IP
//        data: An ASCII String. Min length: 0, Max Length: 32 characters
// Info:
//      This LCD Write will write 0-32 characters to a I2C Enabled LCD.
//      If you send over 32 characters, that will be fine and is accounted for.
//      Sending '' or 0 characters will make the entire screen blank, filled with spaces.
//      The registers are mapped as the following, slv_reg8-slv_reg1:
// slv_reg8: top left LCD data (4 characters) (32 bit width)
// slv_reg7: top 2nd left LCD data (4 characters) (32 bit width)
// slv_reg6: top 2nd right LCD data (4 characters) (32 bit width)
// slv_reg5: top right LCD data (4 characters) (32 bit width)
// slv_reg4: bottom left LCD data (4 characters) (32 bit width)
// slv_reg3: bottom 2nd left LCD data (4 characters) (32 bit width)
// slv_reg2: bottom 2nd right LCD data (4 characters) (32 bit width)
// slv_reg1: bottom right LCD data (4 characters) (32 bit width)
///////////////////////////////////////////////////////////////////////////////////////////
void LCD_Write32(UINTPTR BaseAddr, string data){
	string reg[8] = {"20202020","20202020","20202020","20202020","20202020","20202020","20202020","20202020"};
	char tempHex[200];
	int i=0;

	// If there is data, perform the ASCII to HEX Conversion
	if (!data.empty()){
		// Cast string to Char*
		const char* tempCh = const_cast<char*>(data.c_str());
		// Convert Char* Data to Hex Char Array
		for (const char* p = tempCh;*p;++p){
			i += sprintf(tempHex+i,"%02x",*p);
		}
		// Cast back to a string
		string buf = tempHex;
		// Create registers
		for(int j=7;j>=0;--j){
			// Pad just in case
			reg[j] = buf.substr(0,8) + "20202020";
			// Reduce back to 8 values
			reg[j] = reg[j].substr(0,8);
			// Erase last 8 values
			buf.erase(0,8);
		}
	}

	// Write out to LCD (Top and Bottom lines)
	for(int j=7;j>=0;--j){
		// Each register has an offset of 4.
		Xil_Out32(BaseAddr+4*(j+1),strtoul(reg[j].data(),NULL,16));
	}

	// Enable LCD
	Xil_Out32(BaseAddr,LCD_EN_Mask);
}


///////////////////////////////////////////////////////////////////////////////////////////
// Function: LCD_WriteTop
// Type: void
// Inputs:
//        BaseAddr: Start Address for LCD IP
//        data: An ASCII String. Min length: 0, Max Length: 16 characters
// Info:
//      This LCD Write will write 0-16 characters to a I2C Enabled LCD top line.
//      If you send over 16 characters, that will be fine and is accounted for.
//      Sending '' or 0 characters will make the entire line blank, filled with spaces.
//      The registers are mapped as the following, slv_reg8-slv_reg5:
// slv_reg8: top left LCD data (4 characters) (32 bit width)
// slv_reg7: top 2nd left LCD data (4 characters) (32 bit width)
// slv_reg6: top 2nd right LCD data (4 characters) (32 bit width)
// slv_reg5: top right LCD data (4 characters) (32 bit width)
///////////////////////////////////////////////////////////////////////////////////////////
void LCD_WriteTop(UINTPTR BaseAddr, string data){
	string reg[8] = {"20202020","20202020","20202020","20202020","20202020","20202020","20202020","20202020"};
	char tempHex[200];
	int i=0;

	// If there is data, perform the ASCII to HEX Conversion
	if (!data.empty()){
		// Cast string to Char*
		const char* tempCh = const_cast<char*>(data.c_str());
		// Convert Char* Data to Hex Char Array
		for (const char* p = tempCh;*p;++p){
			i += sprintf(tempHex+i,"%02x",*p);
		}
		// Cast back to a string
		string buf = tempHex;
		// Create registers
		for(int j=7;j>=4;--j){
			// Pad just in case
			reg[j] = buf.substr(0,8) + "20202020";
			// Reduce back to 8 values
			reg[j] = reg[j].substr(0,8);
			// Erase last 8 values
			buf.erase(0,8);
		}
	}

	// Write out to LCD Top Line
	for(int j=7;j>=4;--j){
		// Each register has an offset of 4.
		Xil_Out32(BaseAddr+4*(j+1),strtoul(reg[j].data(),NULL,16));
	}

	// Enable LCD
	Xil_Out32(BaseAddr,LCD_EN_Mask);
}


///////////////////////////////////////////////////////////////////////////////////////////
// Function: LCD_WriteBottom
// Type: void
// Inputs:
//        BaseAddr: Start Address for LCD IP
//        data: An ASCII String. Min length: 0, Max Length: 16 characters
// Info:
//      This LCD Write will write 0-16 characters to a I2C Enabled LCD bottom line.
//      If you send over 16 characters, that will be fine and is accounted for.
//      Sending '' or 0 characters will make the entire line blank, filled with spaces.
//      The registers are mapped as the following, slv_reg4-slv_reg1:
// slv_reg4: bottom left LCD data (4 characters) (32 bit width)
// slv_reg3: bottom 2nd left LCD data (4 characters) (32 bit width)
// slv_reg2: bottom 2nd right LCD data (4 characters) (32 bit width)
// slv_reg1: bottom right LCD data (4 characters) (32 bit width)
///////////////////////////////////////////////////////////////////////////////////////////
void LCD_WriteBottom(UINTPTR BaseAddr, string data){
	string reg[8] = {"20202020","20202020","20202020","20202020","20202020","20202020","20202020","20202020"};
	char tempHex[200];
	int i=0;

	// If there is data, perform the ASCII to HEX Conversion
	if (!data.empty()){
		// Cast string to Char*
		const char* tempCh = const_cast<char*>(data.c_str());
		// Convert Char* Data to Hex Char Array
		for (const char* p = tempCh;*p;++p){
			i += sprintf(tempHex+i,"%02x",*p);
		}
		// Cast back to a string
		string buf = tempHex;
		// Create registers
		for(int j=3;j>=0;--j){
			// Pad just in case
			reg[j] = buf.substr(0,8) + "20202020";
			// Reduce back to 8 values
			reg[j] = reg[j].substr(0,8);
			// Erase last 8 values
			buf.erase(0,8);
		}
	}

	// Write out to LCD Top Line
	for(int j=3;j>=0;--j){
		// Each register has an offset of 4.
		Xil_Out32(BaseAddr+4*(j+1),strtoul(reg[j].data(),NULL,16));
	}

	// Enable LCD
	Xil_Out32(BaseAddr,LCD_EN_Mask);
}


///////////////////////////////////////////////////////////////////////////////////////////
// Function: LCD_Refresh
// Type: void
// Inputs:
//        BaseAddr: Start Address for LCD IP
// Info:
//		Refreshes the LCD when called,
//		otherwise the LCD will not refresh after the first write is complete.
//      Uses the register on the AXI Peripheral:
// slv_reg0: ------------------------------(RS)(EN)
//         Where RS: Reset,  quick burst will refresh
//               EN: Enable, keep high
///////////////////////////////////////////////////////////////////////////////////////////
void LCD_Refresh(UINTPTR BaseAddr){
	// Write a Refresh to slv_reg0
	Xil_Out32(BaseAddr,Xil_In32(BaseAddr) | LCD_Refresh_Mask);
	// Write a ~Refresh to slv_reg0, ensure to keep the EN high
	Xil_Out32(BaseAddr,Xil_In32(BaseAddr) & ~LCD_Refresh_Mask);
}
