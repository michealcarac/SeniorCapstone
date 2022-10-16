# Installing Ubuntu to Kria KV260: [Reference](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/2363129857/Getting+Started+with+Certified+Ubuntu+22.04+LTS+for+Xilinx+Devices#kria-firmware)
     
## Update FW of Kria KV260:
* Connect to [this](https://docs.xilinx.com/r/en-US/ug1089-kv260-starter-kit/Ethernet-Recovery-Tool)
  * The Firmware Update Button is the FWUEN on the KV260 Vision AI Starter kit. 
  * The UART connection is set up from the MicroSD connector to the host PC and listened over COM4 (Default) with a default baud rate of 115200. It may take some experimenting to find the right COM port. 
  * Ensure the ethernet connection is from the Kria KV260 board to the Computer. DO NOT PUT IT THROUGH A ROUTER, IT WILL NOT WORK PROPERLY.
  * Firefox worked for us, but it is noted that Chrome is also supported. The default IP will be 192.168.0.111
  * On Windows 10, the static IP can be accomplished by navigating to "Network Connections" (or Control Panel\Network and Internet\Network Connections), right clicking on the Ethernet interface that is connected to the Kria KV260, selecting Properties, select Internet Protocol Version 4, click on Properties and "Use the following IP address". Here, the IP Address needs to be something along the line of 192.168.0.XYZ where XYZ is any number from 1-255, as long as it is not 111 as that is the default IP for the Ethernet Recovery Tool. The subnet mask should autocomplete, but if not, 255.255.255.0 should be inputted. Hit "OK" and disable the Internet Protocol Version 6 by clicking the check box. It is recommended to set this back to "Obtain an IP address automatically" once this guide is complete. 
* [Download FW package](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/1641152513/Kria+K26+SOM#Boot-Firmware-Updates)
  * Select the FW version according to what version of Ubuntu you will be installing. This also corresponds to the version of Vivado/Vitis on the other end as if developing with 2022.1, the related Ubuntu version is 2022.04, but if developing on 2021.1, it is Ubuntu 20.04. 
* Upload to A then B. If it fails, redo it on both. May require the restart and hold of FWUEN again (Firmware Update Enable button)    
## Install Ubuntu: [Reference](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/2363129857/Getting+Started+with+Certified+Ubuntu+22.04+LTS+for+Xilinx+Devices)
* [Download image](https://ubuntu.com/download/amd-xilinx)
  * If developing on Vivado/Vitis 2022.1, download Ubuntu 2022.04
  * If developing on Vivado/Vitis 2020.1, download Ubuntu 2020.04
  * Matching the versions is crucial
* Connect Micro SD card to computer (min 8gb)
* Use [Win32 Disk Imager](https://win32diskimager.org/) to write the Image to USB
* Select USB and write the Image to it
  * Make sure to unzip it so it is in the format of .img, can use 7zip for this   
## Boot to Ubuntu:
* Insert MicroSD Card
* Turn device on, connect over serial (COM) like before.    
## Configure Ubuntu: (Graphical or Terminal based)
* Login, default user: ubuntu, pass: ubuntu
  * The system will most likely as you to change your password upon first time entering it or first $ sudo command. 
* Connect the system over ethernet to a WAN if not already done. If this was done before first boot, you should be fine, otherwise reboot 
  * To reboot: $ systemctl reboot -l                 
  * or $ sudo reboot
  * This will ensure the correct time is set.
* Set up the Xilinx development and demonstration environment: [Reference](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/2363129857/Getting+Started+with+Certified+Ubuntu+22.04+LTS+for+Xilinx+Devices#%5BinlineExtension%5DSet-up-the-Xilinx-Development-%26-Demonstration-Environment-for-Ubuntu-22.04-LTS)
  * $ sudo snap install xlnx-config --classic --channel=2.x   (2.x for 22.04, 1.x for 20.04 as described [here](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/2057043969/Snaps+-+xlnx-config+Snap+for+Certified+Ubuntu+on+Xilinx+Devices))
  * To finish setting up the system, run the configure script. This script adds some Xilinx-specific PPAs to the package repo list and update the system. Say Yes to all.
    * $ xlnx-config.sysinit
* As the system will probably ask, reboot
  * To reboot: $ systemctl reboot -l                 
  * or $ sudo reboot
