/* GPIO Init File */
// Vendor: empyrea.dev
// Author: Micheal Caracciolo
// Date: 11/27/2022
/////////////////////////////////////////////////////////////////////////////////////////////////////////

#include "GPIO.hpp"

/* GPIO Init */
int GPIO_Init(XGpio *InstancePtr, u32 DeviceId){
	/* Initialize Status */
	int Status;

	/* Initialize GPIO */
	Status = XGpio_Initialize(InstancePtr, DeviceId);

	/* print fail if Timer does not initialize */
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

