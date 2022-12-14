/* GPIO Header File */
// Vendor: empyrea.dev
// Author: Micheal Caracciolo
// Date: 11/27/2022
/////////////////////////////////////////////////////////////////////////////////////////////////////////

#include "xparameters.h"
#include "xgpio.h"     /* GPIO COntrol */

/* GPIO Usage */
#define GPIO_0_DEVICE_ID 			XPAR_AXI_GPIO_0_DEVICE_ID   // GPIO 0
#define GPIO_0_CHANNEL_ID          1 // GPIO Channel 1
/* Interrupts */
#define GPIO_0_INTERRUPT_ID  XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
/* Initialize GPIO */
int GPIO_Init(XGpio *InstancePtr, u32 DeviceId);

