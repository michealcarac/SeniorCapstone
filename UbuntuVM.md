# Creating an Ubuntu Vivado/Vitis Development VM
Now you may be asking, why can I not just use Windows for everything?    

Yeah. Good question. We asked the same thing.    
So, it turns out that most resources online rely on the Ubuntu software stack and ignore any sort of Windows workflows.    
After attempting to do this project in Windows to only miserably fail, the switch to Ubuntu was made. 

## <u> Figuring out what you need </u>
There are two options here
1. Boot directly to Ubuntu 2020.4.3 (Latest version for Vivado/Vitis 2022.1)
2. Create a Ubuntu 2020.4.3 VM    

This tutorial will highlight the VM section as it may not be as straight forward. Booting directly to Ubuntu can be done with a guide like [this](https://ubuntu.com/tutorials/install-ubuntu-desktop#1-overview). Just make sure you have the right version according to what Xilinx version you are installing. 

## <u> Steps </u>

1. Ensure your computer can Virtualize
2. Download VirtualBox
3. Download Ubuntu 2020.4.3 Image
4. Create a VM with the downloaded Image
5. Boot VM and install the image
6. Install Pre-reqs



### <u> Ensure your computer can Virtualize </u>    
Believe it or not.. this is the most important. Not all CPUs can virtualize hardware. This is usually an option that is enabled/disabled in the host computer BIOS. If you have an Intel CPU, navigate through your BIOS for Intel VT. For AMD, look for for AMD-V. [Here is a concise guide](https://bce.berkeley.edu/enabling-virtualization-in-your-pc-bios.html).    

To test if the virtualization is enabled, simply try to start the VM in Step 5. The steps before Step 5 are NOT contigent on if Virtualization is on or not, so if VirtualBox tells you Virtualization is not enabled when you get to Step 5 then try to enable Virtualization again. 

### <u> Download VirtualBox </u>     
Yeah I know.. I hate it too, but it works.

Download for Windows (Or whatever your host is)       
[Download Link](https://www.oracle.com/virtualization/technologies/vm/downloads/virtualbox-downloads.html)    

### <u> Download Ubuntu 2020.4.3 Image </u>
The Latest Ubuntu Version for Xilinx Tools 2022.1 is 2020.4.3. There has been word of 2022.2 supporting Ubuntu 2022.4. 

Download the Desktop Image     
[Download Link](http://lt.releases.ubuntu.com/20.04.3/)     

### <u> Create a VM with the downloaded Image </u>     
Load up VirtualBox > **New** > Name it whatever, Select the ISO Image we just downloaded.  

As this is Ubuntu, VirtualBox can actually install it with little to no User interaction. If you have never installed an OS before, you may want to choose this unless you are curious. We will install it unattendedly as VirtualBox *shouldn't* mess anything up. Hit next and create a user and password. If you want VirtualBox Guest Additions, heres where you can add them, but we will not need them for this.   

Minimum Hardware:    
VM RAM Allocation: 4GB      
VM Processor Allocation: 4 Cores (Dependent on CPU)      
VM Hard Disk: 300GB (for Vivado, Vitis, Petalinux Tools)     


### <u> Boot VM and install the image </u>
If it was selected to install unattendedly, it will boot the VM once you are done configuring it and ready it for daily use. 

### <u> Install Pre-reqs </u>
Once you are in Ubuntu, you should keep a few things in mind. Since it was an unattended install, it seems that it does not set the user as a sudoer, or super user. 

If you need to use sudo    
```
$ su
```
Then input password that you set for your user.

Now be careful as you are on the root user and sudo is not needed for commands now, but treat every command as if you prefaced it with $ sudo. 

For the PetaLinux install, ensure to install *gawk* first.
```
$ sudo apt install gawk
```

Don't forget to update your system as well
```
$ sudo apt update
$ sudo apt upgrade   
```
You will also probably want to change the screen resolution. Do that in Ubuntu's Display Settings. Play around with the resolutions. 


### <u> Install Vitis, Vivado, and PetaLinux Tools </u>   

The following link includes the installer for Vitis, Vivado, and PetaLinux 2022.1. Ensure to select the Linux Self Extracting Unified installer.

[Download Page](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis.html)     
[Direct Download](https://www.xilinx.com/member/forms/download/xef.html?filename=Xilinx_Unified_2022.1_0420_0327_Lin64.bin)    
First create the install directory and create appropriate permissions:
```
$ cd /
$ sudo mkdir tools
$ cd tools
$ sudo mkdir Xilinx
$ cd /
$ sudo chmod ugo\+rwx tools/Xilinx/
```
And now run the Unified Installer
```
$ sudo chmod +x ./Xilinx_Unified_2022.1_0420_0327_Lin64.bin 
$ ./Xilinx_Unified_2022.1_0420_0327_Lin64.bin    ->>> MAKE SURE THIS IS NOT DONE WHEN IN ROOT USER
```

Login to your Xilinx account, select Vitis (this will download Vivado too) and continue with the installation.   
To install PetaLinux, run the Installer again but select PetaLinux instead of Vitis. It is reccomended to do this once the Vitis install has finished. 












