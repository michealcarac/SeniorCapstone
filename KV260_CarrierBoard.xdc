# Edited Kria KV260 Board Constraint for use with the Vision AI Starter Kit

#Other net   PACKAGE_PIN U12      - GND                       Bank   0 - DXN
#Other net   PACKAGE_PIN P12      - VCC_PLADC                 Bank   0 - VCCADC
#Other net   PACKAGE_PIN P13      - PLADC_AGND                Bank   0 - GNDADC
#Other net   PACKAGE_PIN U13      - GND                       Bank   0 - DXP
#Other net   PACKAGE_PIN T13      - PLADC_AGND                Bank   0 - VREFP
#Other net   PACKAGE_PIN R12      - PLADC_AGND                Bank   0 - VREFN
#Other net   PACKAGE_PIN R13      - VAUX_5V0_P                Bank   0 - VP
#Other net   PACKAGE_PIN T12      - VAUX_5V0_N                Bank   0 - VN
#Other net   PACKAGE_PIN U7       - FPGA_PUDC_B               Bank   0 - PUDC_B
#Other net   PACKAGE_PIN W7       - FPGA_POR_OVERRIDE         Bank   0 - POR_OVERRIDE

## PMOD (Negating VCC (11,12) and GND (9,10))
# Format:
# 11  9 7 5 3 1
# 12 10 8 6 4 2                                                                                                         PCB->Connector->FPGA        PMOD #
# Ex:  set_property PACKAGE_PIN H12      [get_ports "som240_1_a17"] ;# Bank  45 VCCO - som240_1_b13 - IO_L4N_AD12N_45   PMOD_HDA11->som240_1_A17->H12 1
set_property PACKAGE_PIN H12      [get_ports "som240_1_a17"] ;# Bank  45 VCCO - som240_1_b13 - IO_L4N_AD12N_45   PMOD_HDA11->som240_1_A17->H12 1
set_property PACKAGE_PIN E10      [get_ports "som240_1_d20"] ;# Bank  45 VCCO - som240_1_b13 - IO_L7P_HDGC_45    PMOD_HDA12->som240_1_D20->E10 3
set_property PACKAGE_PIN D10      [get_ports "som240_1_d21"] ;# Bank  45 VCCO - som240_1_b13 - IO_L7N_HDGC_45    PMOD_HDA13->som240_1_D21->D10 5
set_property PACKAGE_PIN C11      [get_ports "som240_1_d22"] ;# Bank  45 VCCO - som240_1_b13 - IO_L9P_AD11P_45   PMOD_HDA14->som240_1_D22->C11 7
set_property PACKAGE_PIN B10      [get_ports "som240_1_b20"] ;# Bank  45 VCCO - som240_1_b13 - IO_L9N_AD11N_45   PMOD_HDA15->som240_1_B20->B10 2
set_property PACKAGE_PIN E12      [get_ports "som240_1_b21"] ;# Bank  45 VCCO - som240_1_b13 - IO_L8P_HDGC_45 PMOD_HDA16_CC->som240_1_B21->E12 4
set_property PACKAGE_PIN D11      [get_ports "som240_1_b22"] ;# Bank  45 VCCO - som240_1_b13 - IO_L8N_HDGC_45    PMOD_HDA17->som240_1_B22->D11 6
set_property PACKAGE_PIN B11      [get_ports "som240_1_c22"] ;# Bank  45 VCCO - som240_1_b13 - IO_L10P_AD10P_45  PMOD_HDA18->som240_1_C22->B11 8

## Clocks
# Differential Clock (Only the P needs to be constrained)
set_property PACKAGE_PIN C3       [get_ports "som240_1_a6"] ;# Bank  66 VCCO - som240_1_d1 - IO_L12P_T1U_N10_GC_66   P
#set_property PACKAGE_PIN C2       [get_ports "som240_1_a7"] ;# Bank  66 VCCO - som240_1_d1 - IO_L12N_T1U_N11_GC_66  N
# ETH (Reference)        - 25 MHz LVCMOS    (ETH_REF_CLK)
# USB Hub                - 25 MHz LVCMOS    (USB_HUB_CLK_IN)
# USB PHY (Reference)    - 24 MHz LVCMOS    (USB_PHY_REFCLK)
# ISP (External)         - 48 MHz LVCMOS    (ISP_EXTCLOCK)
# IAS (External)         - 48 MHz LVCMOS    (IAS1_EXTCLK)
# GTR0 (Reference) (P/N) - 27 MHz LVDS      (GTR_REFCLK0_C2M_P/N)
#Other net   PACKAGE_PIN F23      - som240_1_c47              Bank 505 - PS_MGTREFCLK0P_505
#Other net   PACKAGE_PIN F24      - som240_1_c48              Bank 505 - PS_MGTREFCLK0N_505
# GTR1 (Reference) (P/N) - 26 MHz LVDS      (GTR_REFCLK1_C2M_P/N)
#Other net   PACKAGE_PIN E21      - som240_1_b49              Bank 505 - PS_MGTREFCLK1P_505
#Other net   PACKAGE_PIN E22      - som240_1_b50              Bank 505 - PS_MGTREFCLK1N_505
# GTR2 (Reference) (P/N) - 125 MHz LVDS     (GTR_REFCLK2_C2M_P/N)
#Other net   PACKAGE_PIN C21      - som240_1_d53              Bank 505 - PS_MGTREFCLK2P_505
#Other net   PACKAGE_PIN C22      - som240_1_d54              Bank 505 - PS_MGTREFCLK2N_505
# GTR3 (Reference) (P/N) - ? MHz LVDS     (GTR_REFCLK3_C2M_P/N)
#Other net   PACKAGE_PIN A22      - som240_1_a52              Bank 505 - PS_MGTREFCLK3N_505
#Other net   PACKAGE_PIN A21      - som240_1_a51              Bank 505 - PS_MGTREFCLK3P_505


## Modes
# Mode 0
#Other net   PACKAGE_PIN P19      - som240_1_a27              Bank 503 - PS_MODE0
# Mode 1
#Other net   PACKAGE_PIN P20      - som240_1_a28              Bank 503 - PS_MODE1
# Mode 2
#Other net   PACKAGE_PIN R20      - som240_1_a29              Bank 503 - PS_MODE2
# Mode 3
#Other net   PACKAGE_PIN T20      - som240_1_a30              Bank 503 - PS_MODE3

set_property PACKAGE_PIN A12      [get_ports "som240_1_c24"] ;# Bank  45 VCCO - som240_1_b13 - IO_L11P_AD9P_45
set_property PACKAGE_PIN A10      [get_ports "som240_1_c23"] ;# Bank  45 VCCO - som240_1_b13 - IO_L10N_AD10N_45
set_property PACKAGE_PIN F11      [get_ports "som240_1_a15"] ;# Bank  45 VCCO - som240_1_b13 - IO_L6N_HDGC_45
set_property PACKAGE_PIN F12      [get_ports "som240_1_c20"] ;# Bank  45 VCCO - som240_1_b13 - IO_L6P_HDGC_45
set_property PACKAGE_PIN F10      [get_ports "som240_1_d17"] ;# Bank  45 VCCO - som240_1_b13 - IO_L5N_HDGC_45
set_property PACKAGE_PIN G11      [get_ports "som240_1_d16"] ;# Bank  45 VCCO - som240_1_b13 - IO_L5P_HDGC_45
set_property PACKAGE_PIN J12      [get_ports "som240_1_a16"] ;# Bank  45 VCCO - som240_1_b13 - IO_L4P_AD12P_45
set_property PACKAGE_PIN G10      [get_ports "som240_1_c19"] ;# Bank  45 VCCO - som240_1_b13 - IO_L3N_AD13N_45
set_property PACKAGE_PIN H11      [get_ports "som240_1_c18"] ;# Bank  45 VCCO - som240_1_b13 - IO_L3P_AD13P_45
set_property PACKAGE_PIN K12      [get_ports "som240_1_b18"] ;# Bank  45 VCCO - som240_1_b13 - IO_L2N_AD14N_45
set_property PACKAGE_PIN K13      [get_ports "som240_1_b17"] ;# Bank  45 VCCO - som240_1_b13 - IO_L2P_AD14P_45
set_property PACKAGE_PIN J10      [get_ports "som240_1_b16"] ;# Bank  45 VCCO - som240_1_b13 - IO_L1N_AD15N_45
set_property PACKAGE_PIN J11      [get_ports "som240_1_d18"] ;# Bank  45 VCCO - som240_1_b13 - IO_L1P_AD15P_45
set_property PACKAGE_PIN E8       [get_ports "som240_1_d14"] ;# Bank  66 VCCO - som240_1_d1 - IO_L17N_T2U_N9_AD10N_66
set_property PACKAGE_PIN F8       [get_ports "som240_1_d13"] ;# Bank  66 VCCO - som240_1_d1 - IO_L17P_T2U_N8_AD10P_66
set_property PACKAGE_PIN F7       [get_ports "som240_1_a13"] ;# Bank  66 VCCO - som240_1_d1 - IO_L16N_T2U_N7_QBC_AD3N_66
set_property PACKAGE_PIN G8       [get_ports "som240_1_a12"] ;# Bank  66 VCCO - som240_1_d1 - IO_L16P_T2U_N6_QBC_AD3P_66
set_property PACKAGE_PIN F6       [get_ports "som240_1_a10"] ;# Bank  66 VCCO - som240_1_d1 - IO_L15N_T2L_N5_AD11N_66
set_property PACKAGE_PIN G6       [get_ports "som240_1_a9"] ;# Bank  66 VCCO - som240_1_d1 - IO_L15P_T2L_N4_AD11P_66
set_property PACKAGE_PIN D5       [get_ports "som240_1_b11"] ;# Bank  66 VCCO - som240_1_d1 - IO_L14N_T2L_N3_GC_66
set_property PACKAGE_PIN E5       [get_ports "som240_1_b10"] ;# Bank  66 VCCO - som240_1_d1 - IO_L14P_T2L_N2_GC_66
set_property PACKAGE_PIN D6       [get_ports "som240_1_c13"] ;# Bank  66 VCCO - som240_1_d1 - IO_L13N_T2L_N1_GC_QBC_66
set_property PACKAGE_PIN D7       [get_ports "som240_1_c12"] ;# Bank  66 VCCO - som240_1_d1 - IO_L13P_T2L_N0_GC_QBC_66
set_property PACKAGE_PIN C4       [get_ports "som240_1_d11"] ;# Bank  66 VCCO - som240_1_d1 - IO_L11N_T1U_N9_GC_66
set_property PACKAGE_PIN D4       [get_ports "som240_1_d10"] ;# Bank  66 VCCO - som240_1_d1 - IO_L11P_T1U_N8_GC_66
set_property PACKAGE_PIN A4       [get_ports "som240_1_c10"] ;# Bank  66 VCCO - som240_1_d1 - IO_L10N_T1U_N7_QBC_AD4N_66
set_property PACKAGE_PIN B4       [get_ports "som240_1_c9"] ;# Bank  66 VCCO - som240_1_d1 - IO_L10P_T1U_N6_QBC_AD4P_66
set_property PACKAGE_PIN A3       [get_ports "som240_1_b8"] ;# Bank  66 VCCO - som240_1_d1 - IO_L9N_T1L_N5_AD12N_66
set_property PACKAGE_PIN B3       [get_ports "som240_1_b7"] ;# Bank  66 VCCO - som240_1_d1 - IO_L9P_T1L_N4_AD12P_66
set_property PACKAGE_PIN A1       [get_ports "som240_1_a4"] ;# Bank  66 VCCO - som240_1_d1 - IO_L8N_T1L_N3_AD5N_66
set_property PACKAGE_PIN A2       [get_ports "som240_1_a3"] ;# Bank  66 VCCO - som240_1_d1 - IO_L8P_T1L_N2_AD5P_66
set_property PACKAGE_PIN B1       [get_ports "som240_1_b2"] ;# Bank  66 VCCO - som240_1_d1 - IO_L7N_T1L_N1_QBC_AD13N_66
set_property PACKAGE_PIN C1       [get_ports "som240_1_b1"] ;# Bank  66 VCCO - som240_1_d1 - IO_L7P_T1L_N0_QBC_AD13P_66
set_property PACKAGE_PIN E3       [get_ports "som240_1_b5"] ;# Bank  66 VCCO - som240_1_d1 - IO_L5N_T0U_N9_AD14N_66
set_property PACKAGE_PIN E4       [get_ports "som240_1_b4"] ;# Bank  66 VCCO - som240_1_d1 - IO_L5P_T0U_N8_AD14P_66
set_property PACKAGE_PIN F3       [get_ports "som240_1_c7"] ;# Bank  66 VCCO - som240_1_d1 - IO_L4N_T0U_N7_DBC_AD7N_66
set_property PACKAGE_PIN G3       [get_ports "som240_1_c6"] ;# Bank  66 VCCO - som240_1_d1 - IO_L4P_T0U_N6_DBC_AD7P_66
set_property PACKAGE_PIN E2       [get_ports "som240_1_d5"] ;# Bank  66 VCCO - som240_1_d1 - IO_L3N_T0L_N5_AD15N_66
set_property PACKAGE_PIN F2       [get_ports "som240_1_d4"] ;# Bank  66 VCCO - som240_1_d1 - IO_L3P_T0L_N4_AD15P_66
set_property PACKAGE_PIN D1       [get_ports "som240_1_d8"] ;# Bank  66 VCCO - som240_1_d1 - IO_L2N_T0L_N3_66
set_property PACKAGE_PIN E1       [get_ports "som240_1_d7"] ;# Bank  66 VCCO - som240_1_d1 - IO_L2P_T0L_N2_66
set_property PACKAGE_PIN F1       [get_ports "som240_1_c4"] ;# Bank  66 VCCO - som240_1_d1 - IO_L1N_T0L_N1_DBC_66
set_property PACKAGE_PIN G1       [get_ports "som240_1_c3"] ;# Bank  66 VCCO - som240_1_d1 - IO_L1P_T0L_N0_DBC_66

# These are for other periphals, mainly ones with MIO pins (Multiplexed I/O) 
# These are typically pins that talk to I/O peripherals and Memory Interfaces under the SoC

#Other net   PACKAGE_PIN N1       - MGTAVTTRCAL               Bank 224 - MGTAVTTRCAL_R
#Other net   PACKAGE_PIN AG15     - MIO0_QSPI_CLK             Bank 500 - PS_MIO0
#Other net   PACKAGE_PIN AG16     - MIO1_QSPI_DQ1             Bank 500 - PS_MIO1
#Other net   PACKAGE_PIN AD17     - MIO10_SPI_MISO            Bank 500 - PS_MIO10
#Other net   PACKAGE_PIN AE17     - MIO11_SPI_MOSI            Bank 500 - PS_MIO11
#Other net   PACKAGE_PIN AC17     - som240_1_c28              Bank 500 - PS_MIO12
#Other net   PACKAGE_PIN AH18     - MIO13_EMMC_DAT0           Bank 500 - PS_MIO13
#Other net   PACKAGE_PIN AG18     - MIO14_EMMC_DAT1           Bank 500 - PS_MIO14
#Other net   PACKAGE_PIN AE18     - MIO15_EMMC_DAT2           Bank 500 - PS_MIO15
#Other net   PACKAGE_PIN AF18     - MIO16_EMMC_DAT3           Bank 500 - PS_MIO16
#Other net   PACKAGE_PIN AC18     - MIO17_EMMC_DAT4           Bank 500 - PS_MIO17
#Other net   PACKAGE_PIN AC19     - MIO18_EMMC_DAT5           Bank 500 - PS_MIO18
#Other net   PACKAGE_PIN AE19     - MIO19_EMMC_DAT6           Bank 500 - PS_MIO19
#Other net   PACKAGE_PIN AF15     - MIO2_QSPI_DQ2             Bank 500 - PS_MIO2
#Other net   PACKAGE_PIN AD19     - MIO20_EMMC_DAT7           Bank 500 - PS_MIO20
#Other net   PACKAGE_PIN AC21     - MIO21_EMMC_CMD            Bank 500 - PS_MIO21
#Other net   PACKAGE_PIN AB20     - FPGA_MIO22_EMMC_CLK       Bank 500 - PS_MIO22
#Other net   PACKAGE_PIN AB18     - MIO23_EMMC_RST_B          Bank 500 - PS_MIO23
#Other net   PACKAGE_PIN AB19     - som240_1_c26              Bank 500 - PS_MIO24
#Other net   PACKAGE_PIN AB21     - som240_1_c27              Bank 500 - PS_MIO25
#Other net   PACKAGE_PIN AH15     - MIO3_QSPI_DQ3             Bank 500 - PS_MIO3
#Other net   PACKAGE_PIN AH16     - MIO4_QSPI_DQ0             Bank 500 - PS_MIO4
#Other net   PACKAGE_PIN AD16     - MIO5_QSPI_CS_B            Bank 500 - PS_MIO5
#Other net   PACKAGE_PIN AF16     - MIO6_SPI_CLK              Bank 500 - PS_MIO6
#Other net   PACKAGE_PIN AH17     - MIO7_LED1                 Bank 500 - PS_MIO7
#Other net   PACKAGE_PIN AF17     - MIO8_LED2                 Bank 500 - PS_MIO8
#Other net   PACKAGE_PIN AC16     - MIO9_SPI_CS_B             Bank 500 - PS_MIO9
#Other net   PACKAGE_PIN L15      - som240_1_d28              Bank 501 - PS_MIO26
#Other net   PACKAGE_PIN J15      - som240_1_d29              Bank 501 - PS_MIO27
#Other net   PACKAGE_PIN K15      - som240_1_d30              Bank 501 - PS_MIO28
#Other net   PACKAGE_PIN G16      - som240_1_c30              Bank 501 - PS_MIO29
#Other net   PACKAGE_PIN F16      - som240_1_c31              Bank 501 - PS_MIO30
#Other net   PACKAGE_PIN H16      - som240_1_c32              Bank 501 - PS_MIO31
#Other net   PACKAGE_PIN J16      - RSV_FPGA_MIO32            Bank 501 - PS_MIO32
#Other net   PACKAGE_PIN L16      - RSV_FPGA_MIO33            Bank 501 - PS_MIO33
#Other net   PACKAGE_PIN L17      - MIO34_PS_PWR_EN           Bank 501 - PS_MIO34
#Other net   PACKAGE_PIN H17      - som240_1_b28              Bank 501 - PS_MIO35
#Other net   PACKAGE_PIN K17      - som240_1_b29              Bank 501 - PS_MIO36
#Other net   PACKAGE_PIN J17      - som240_1_b30              Bank 501 - PS_MIO37
#Other net   PACKAGE_PIN H18      - som240_1_b32              Bank 501 - PS_MIO38
#Other net   PACKAGE_PIN H19      - som240_1_b33              Bank 501 - PS_MIO39
#Other net   PACKAGE_PIN K18      - som240_1_b34              Bank 501 - PS_MIO40
#Other net   PACKAGE_PIN J19      - som240_1_a34              Bank 501 - PS_MIO41
#Other net   PACKAGE_PIN L18      - som240_1_a35              Bank 501 - PS_MIO42
#Other net   PACKAGE_PIN K19      - som240_1_a36              Bank 501 - PS_MIO43
#Other net   PACKAGE_PIN J20      - som240_1_d32              Bank 501 - PS_MIO44
#Other net   PACKAGE_PIN K20      - som240_1_d33              Bank 501 - PS_MIO45
#Other net   PACKAGE_PIN L20      - som240_1_d34              Bank 501 - PS_MIO46
#Other net   PACKAGE_PIN H21      - som240_1_c34              Bank 501 - PS_MIO47
#Other net   PACKAGE_PIN J21      - som240_1_c35              Bank 501 - PS_MIO48
#Other net   PACKAGE_PIN M18      - som240_1_c36              Bank 501 - PS_MIO49
#Other net   PACKAGE_PIN M19      - som240_1_b36              Bank 501 - PS_MIO50
#Other net   PACKAGE_PIN L21      - som240_1_b37              Bank 501 - PS_MIO51
#Other net   PACKAGE_PIN G18      - som240_1_d36              Bank 502 - PS_MIO52
#Other net   PACKAGE_PIN D16      - som240_1_d37              Bank 502 - PS_MIO53
#Other net   PACKAGE_PIN F17      - som240_1_d38              Bank 502 - PS_MIO54
#Other net   PACKAGE_PIN B16      - som240_1_c38              Bank 502 - PS_MIO55
#Other net   PACKAGE_PIN C16      - som240_1_c39              Bank 502 - PS_MIO56
#Other net   PACKAGE_PIN A16      - som240_1_c40              Bank 502 - PS_MIO57
#Other net   PACKAGE_PIN F18      - som240_1_b40              Bank 502 - PS_MIO58
#Other net   PACKAGE_PIN E17      - som240_1_b41              Bank 502 - PS_MIO59
#Other net   PACKAGE_PIN C17      - som240_1_b42              Bank 502 - PS_MIO60
#Other net   PACKAGE_PIN D17      - som240_1_a38              Bank 502 - PS_MIO61
#Other net   PACKAGE_PIN A17      - som240_1_a39              Bank 502 - PS_MIO62
#Other net   PACKAGE_PIN E18      - som240_1_a40              Bank 502 - PS_MIO63
#Other net   PACKAGE_PIN E19      - som240_1_d40              Bank 502 - PS_MIO64
#Other net   PACKAGE_PIN A18      - som240_1_d41              Bank 502 - PS_MIO65
#Other net   PACKAGE_PIN G19      - som240_1_d42              Bank 502 - PS_MIO66
#Other net   PACKAGE_PIN B18      - som240_1_c42              Bank 502 - PS_MIO67
#Other net   PACKAGE_PIN C18      - som240_1_c43              Bank 502 - PS_MIO68
#Other net   PACKAGE_PIN D19      - som240_1_c44              Bank 502 - PS_MIO69
#Other net   PACKAGE_PIN C19      - som240_1_b44              Bank 502 - PS_MIO70
#Other net   PACKAGE_PIN B19      - som240_1_b45              Bank 502 - PS_MIO71
#Other net   PACKAGE_PIN G20      - som240_1_b46              Bank 502 - PS_MIO72
#Other net   PACKAGE_PIN G21      - som240_1_a42              Bank 502 - PS_MIO73
#Other net   PACKAGE_PIN D20      - som240_1_a43              Bank 502 - PS_MIO74
#Other net   PACKAGE_PIN A19      - som240_1_a44              Bank 502 - PS_MIO75
#Other net   PACKAGE_PIN B20      - som240_1_d44              Bank 502 - PS_MIO76
#Other net   PACKAGE_PIN F20      - som240_1_d45              Bank 502 - PS_MIO77
#Other net   PACKAGE_PIN M21      - PS_DONE                   Bank 503 - PS_DONE
#Other net   PACKAGE_PIN P17      - som240_1_b24              Bank 503 - PS_ERROR_OUT
#Other net   PACKAGE_PIN M20      - som240_1_b25              Bank 503 - PS_ERROR_STATUS
#Other net   PACKAGE_PIN P21      - PS_INIT_B                 Bank 503 - PS_INIT_B
#Other net   PACKAGE_PIN R19      - som240_1_a25              Bank 503 - PS_JTAG_TCK
#Other net   PACKAGE_PIN R18      - som240_1_a24              Bank 503 - PS_JTAG_TDI
#Other net   PACKAGE_PIN T21      - som240_1_a23              Bank 503 - PS_JTAG_TDO
#Other net   PACKAGE_PIN N21      - som240_1_a22              Bank 503 - PS_JTAG_TMS
#Other net   PACKAGE_PIN N17      - PS_PADI                   Bank 503 - PS_PADI
#Other net   PACKAGE_PIN N18      - PS_PADO                   Bank 503 - PS_PADO
#Other net   PACKAGE_PIN P16      - som240_1_c15              Bank 503 - PS_POR_B
#Other net   PACKAGE_PIN R17      - PS_PROG_B                 Bank 503 - PS_PROG_B
#Other net   PACKAGE_PIN R16      - PS_REF_CLK                Bank 503 - PS_REF_CLK
#Other net   PACKAGE_PIN N19      - som240_1_c16              Bank 503 - PS_SRST_B
#Other net   PACKAGE_PIN W28      - DDR4_C0_A0                Bank 504 - PS_DDR_A0
#Other net   PACKAGE_PIN Y28      - DDR4_C0_A1                Bank 504 - PS_DDR_A1
#Other net   PACKAGE_PIN AA25     - DDR4_C0_A10               Bank 504 - PS_DDR_A10
#Other net   PACKAGE_PIN AA26     - DDR4_C0_A11               Bank 504 - PS_DDR_A11
#Other net   PACKAGE_PIN AB25     - DDR4_C0_A12               Bank 504 - PS_DDR_A12
#Other net   PACKAGE_PIN AB26     - DDR4_C0_A13               Bank 504 - PS_DDR_A13
#Other net   PACKAGE_PIN AB24     - DDR4_C0_WE_B              Bank 504 - PS_DDR_A14
#Other net   PACKAGE_PIN AC24     - DDR4_C0_CAS_B             Bank 504 - PS_DDR_A15
#Other net   PACKAGE_PIN AC23     - DDR4_C0_RAS_B             Bank 504 - PS_DDR_A16
#Other net   PACKAGE_PIN AC22     - No Connect                Bank 504 - PS_DDR_A17
#Other net   PACKAGE_PIN AB28     - DDR4_C0_A2                Bank 504 - PS_DDR_A2
#Other net   PACKAGE_PIN AA28     - DDR4_C0_A3                Bank 504 - PS_DDR_A3
#Other net   PACKAGE_PIN Y27      - DDR4_C0_A4                Bank 504 - PS_DDR_A4
#Other net   PACKAGE_PIN AA27     - DDR4_C0_A5                Bank 504 - PS_DDR_A5
#Other net   PACKAGE_PIN Y22      - DDR4_C0_A6                Bank 504 - PS_DDR_A6
#Other net   PACKAGE_PIN AA23     - DDR4_C0_A7                Bank 504 - PS_DDR_A7
#Other net   PACKAGE_PIN AA22     - DDR4_C0_A8                Bank 504 - PS_DDR_A8
#Other net   PACKAGE_PIN AB23     - DDR4_C0_A9                Bank 504 - PS_DDR_A9
#Other net   PACKAGE_PIN Y23      - DDR4_C0_ACT_B             Bank 504 - PS_DDR_ACT_N
#Other net   PACKAGE_PIN U25      - DDR4_C0_ALERT_B           Bank 504 - PS_DDR_ALERT_N
#Other net   PACKAGE_PIN V23      - DDR4_C0_BA0               Bank 504 - PS_DDR_BA0
#Other net   PACKAGE_PIN W22      - DDR4_C0_BA1               Bank 504 - PS_DDR_BA1
#Other net   PACKAGE_PIN W24      - DDR4_C0_BG0               Bank 504 - PS_DDR_BG0
#Other net   PACKAGE_PIN V22      - No Connect                Bank 504 - PS_DDR_BG1
#Other net   PACKAGE_PIN W25      - DDR4_C0_CK0_T             Bank 504 - PS_DDR_CK0
#Other net   PACKAGE_PIN Y24      - No Connect                Bank 504 - PS_DDR_CK1
#Other net   PACKAGE_PIN V28      - DDR4_C0_CKE0              Bank 504 - PS_DDR_CKE0
#Other net   PACKAGE_PIN V27      - No Connect                Bank 504 - PS_DDR_CKE1
#Other net   PACKAGE_PIN W26      - DDR4_C0_CK0_C             Bank 504 - PS_DDR_CK_N0
#Other net   PACKAGE_PIN Y25      - No Connect                Bank 504 - PS_DDR_CK_N1
#Other net   PACKAGE_PIN W27      - DDR4_C0_CS0_B             Bank 504 - PS_DDR_CS_N0
#Other net   PACKAGE_PIN V26      - No Connect                Bank 504 - PS_DDR_CS_N1
#Other net   PACKAGE_PIN AG20     - DDR4_C0_DM_B0             Bank 504 - PS_DDR_DM0
#Other net   PACKAGE_PIN AE23     - DDR4_C0_DM_B1             Bank 504 - PS_DDR_DM1
#Other net   PACKAGE_PIN AE25     - DDR4_C0_DM_B2             Bank 504 - PS_DDR_DM2
#Other net   PACKAGE_PIN AE28     - DDR4_C0_DM_B3             Bank 504 - PS_DDR_DM3
#Other net   PACKAGE_PIN R23      - DDR4_C0_DM_B4             Bank 504 - PS_DDR_DM4
#Other net   PACKAGE_PIN H23      - DDR4_C0_DM_B5             Bank 504 - PS_DDR_DM5
#Other net   PACKAGE_PIN L27      - DDR4_C0_DM_B6             Bank 504 - PS_DDR_DM6
#Other net   PACKAGE_PIN H26      - DDR4_C0_DM_B7             Bank 504 - PS_DDR_DM7
#Other net   PACKAGE_PIN T26      - No Connect                Bank 504 - PS_DDR_DM8
#Other net   PACKAGE_PIN AD21     - DDR4_C0_DQ5               Bank 504 - PS_DDR_DQ0
#Other net   PACKAGE_PIN AE20     - DDR4_C0_DQ1               Bank 504 - PS_DDR_DQ1
#Other net   PACKAGE_PIN AE22     - DDR4_C0_DQ13              Bank 504 - PS_DDR_DQ10
#Other net   PACKAGE_PIN AD22     - DDR4_C0_DQ15              Bank 504 - PS_DDR_DQ11
#Other net   PACKAGE_PIN AH23     - DDR4_C0_DQ8               Bank 504 - PS_DDR_DQ12
#Other net   PACKAGE_PIN AH24     - DDR4_C0_DQ10              Bank 504 - PS_DDR_DQ13
#Other net   PACKAGE_PIN AE24     - DDR4_C0_DQ11              Bank 504 - PS_DDR_DQ14
#Other net   PACKAGE_PIN AG24     - DDR4_C0_DQ14              Bank 504 - PS_DDR_DQ15
#Other net   PACKAGE_PIN AC26     - DDR4_C0_DQ23              Bank 504 - PS_DDR_DQ16
#Other net   PACKAGE_PIN AD26     - DDR4_C0_DQ17              Bank 504 - PS_DDR_DQ17
#Other net   PACKAGE_PIN AD25     - DDR4_C0_DQ19              Bank 504 - PS_DDR_DQ18
#Other net   PACKAGE_PIN AD24     - DDR4_C0_DQ21              Bank 504 - PS_DDR_DQ19
#Other net   PACKAGE_PIN AD20     - DDR4_C0_DQ7               Bank 504 - PS_DDR_DQ2
#Other net   PACKAGE_PIN AG26     - DDR4_C0_DQ16              Bank 504 - PS_DDR_DQ20
#Other net   PACKAGE_PIN AH25     - DDR4_C0_DQ22              Bank 504 - PS_DDR_DQ21
#Other net   PACKAGE_PIN AH26     - DDR4_C0_DQ18              Bank 504 - PS_DDR_DQ22
#Other net   PACKAGE_PIN AG25     - DDR4_C0_DQ20              Bank 504 - PS_DDR_DQ23
#Other net   PACKAGE_PIN AH27     - DDR4_C0_DQ26              Bank 504 - PS_DDR_DQ24
#Other net   PACKAGE_PIN AH28     - DDR4_C0_DQ28              Bank 504 - PS_DDR_DQ25
#Other net   PACKAGE_PIN AF28     - DDR4_C0_DQ30              Bank 504 - PS_DDR_DQ26
#Other net   PACKAGE_PIN AG28     - DDR4_C0_DQ24              Bank 504 - PS_DDR_DQ27
#Other net   PACKAGE_PIN AC27     - DDR4_C0_DQ29              Bank 504 - PS_DDR_DQ28
#Other net   PACKAGE_PIN AD27     - DDR4_C0_DQ31              Bank 504 - PS_DDR_DQ29
#Other net   PACKAGE_PIN AF20     - DDR4_C0_DQ0               Bank 504 - PS_DDR_DQ3
#Other net   PACKAGE_PIN AD28     - DDR4_C0_DQ27              Bank 504 - PS_DDR_DQ30
#Other net   PACKAGE_PIN AC28     - DDR4_C0_DQ25              Bank 504 - PS_DDR_DQ31
#Other net   PACKAGE_PIN T22      - DDR4_C0_DQ39              Bank 504 - PS_DDR_DQ32
#Other net   PACKAGE_PIN R22      - DDR4_C0_DQ37              Bank 504 - PS_DDR_DQ33
#Other net   PACKAGE_PIN P22      - DDR4_C0_DQ35              Bank 504 - PS_DDR_DQ34
#Other net   PACKAGE_PIN N22      - DDR4_C0_DQ33              Bank 504 - PS_DDR_DQ35
#Other net   PACKAGE_PIN T23      - DDR4_C0_DQ38              Bank 504 - PS_DDR_DQ36
#Other net   PACKAGE_PIN P24      - DDR4_C0_DQ32              Bank 504 - PS_DDR_DQ37
#Other net   PACKAGE_PIN R24      - DDR4_C0_DQ34              Bank 504 - PS_DDR_DQ38
#Other net   PACKAGE_PIN N24      - DDR4_C0_DQ36              Bank 504 - PS_DDR_DQ39
#Other net   PACKAGE_PIN AH21     - DDR4_C0_DQ2               Bank 504 - PS_DDR_DQ4
#Other net   PACKAGE_PIN H24      - DDR4_C0_DQ41              Bank 504 - PS_DDR_DQ40
#Other net   PACKAGE_PIN J24      - DDR4_C0_DQ43              Bank 504 - PS_DDR_DQ41
#Other net   PACKAGE_PIN M24      - DDR4_C0_DQ44              Bank 504 - PS_DDR_DQ42
#Other net   PACKAGE_PIN K24      - DDR4_C0_DQ40              Bank 504 - PS_DDR_DQ43
#Other net   PACKAGE_PIN J22      - DDR4_C0_DQ47              Bank 504 - PS_DDR_DQ44
#Other net   PACKAGE_PIN H22      - DDR4_C0_DQ45              Bank 504 - PS_DDR_DQ45
#Other net   PACKAGE_PIN K22      - DDR4_C0_DQ46              Bank 504 - PS_DDR_DQ46
#Other net   PACKAGE_PIN L22      - DDR4_C0_DQ42              Bank 504 - PS_DDR_DQ47
#Other net   PACKAGE_PIN M25      - DDR4_C0_DQ52              Bank 504 - PS_DDR_DQ48
#Other net   PACKAGE_PIN M26      - DDR4_C0_DQ48              Bank 504 - PS_DDR_DQ49
#Other net   PACKAGE_PIN AH20     - DDR4_C0_DQ4               Bank 504 - PS_DDR_DQ5
#Other net   PACKAGE_PIN L25      - DDR4_C0_DQ54              Bank 504 - PS_DDR_DQ50
#Other net   PACKAGE_PIN L26      - DDR4_C0_DQ50              Bank 504 - PS_DDR_DQ51
#Other net   PACKAGE_PIN K28      - DDR4_C0_DQ53              Bank 504 - PS_DDR_DQ52
#Other net   PACKAGE_PIN L28      - DDR4_C0_DQ55              Bank 504 - PS_DDR_DQ53
#Other net   PACKAGE_PIN M28      - DDR4_C0_DQ51              Bank 504 - PS_DDR_DQ54
#Other net   PACKAGE_PIN N28      - DDR4_C0_DQ49              Bank 504 - PS_DDR_DQ55
#Other net   PACKAGE_PIN J28      - DDR4_C0_DQ59              Bank 504 - PS_DDR_DQ56
#Other net   PACKAGE_PIN K27      - DDR4_C0_DQ56              Bank 504 - PS_DDR_DQ57
#Other net   PACKAGE_PIN H28      - DDR4_C0_DQ57              Bank 504 - PS_DDR_DQ58
#Other net   PACKAGE_PIN H27      - DDR4_C0_DQ62              Bank 504 - PS_DDR_DQ59
#Other net   PACKAGE_PIN AH19     - DDR4_C0_DQ6               Bank 504 - PS_DDR_DQ6
#Other net   PACKAGE_PIN G26      - DDR4_C0_DQ61              Bank 504 - PS_DDR_DQ60
#Other net   PACKAGE_PIN G25      - DDR4_C0_DQ63              Bank 504 - PS_DDR_DQ61
#Other net   PACKAGE_PIN K25      - DDR4_C0_DQ60              Bank 504 - PS_DDR_DQ62
#Other net   PACKAGE_PIN J25      - DDR4_C0_DQ58              Bank 504 - PS_DDR_DQ63
#Other net   PACKAGE_PIN T28      - No Connect                Bank 504 - PS_DDR_DQ64
#Other net   PACKAGE_PIN R28      - No Connect                Bank 504 - PS_DDR_DQ65
#Other net   PACKAGE_PIN P28      - No Connect                Bank 504 - PS_DDR_DQ66
#Other net   PACKAGE_PIN P27      - No Connect                Bank 504 - PS_DDR_DQ67
#Other net   PACKAGE_PIN P26      - No Connect                Bank 504 - PS_DDR_DQ68
#Other net   PACKAGE_PIN R25      - No Connect                Bank 504 - PS_DDR_DQ69
#Other net   PACKAGE_PIN AG19     - DDR4_C0_DQ3               Bank 504 - PS_DDR_DQ7
#Other net   PACKAGE_PIN P25      - No Connect                Bank 504 - PS_DDR_DQ70
#Other net   PACKAGE_PIN T25      - No Connect                Bank 504 - PS_DDR_DQ71
#Other net   PACKAGE_PIN AF22     - DDR4_C0_DQ9               Bank 504 - PS_DDR_DQ8
#Other net   PACKAGE_PIN AH22     - DDR4_C0_DQ12              Bank 504 - PS_DDR_DQ9
#Other net   PACKAGE_PIN AG21     - DDR4_C0_DQS0_C            Bank 504 - PS_DDR_DQS_N0
#Other net   PACKAGE_PIN AG23     - DDR4_C0_DQS1_C            Bank 504 - PS_DDR_DQS_N1
#Other net   PACKAGE_PIN AF26     - DDR4_C0_DQS2_C            Bank 504 - PS_DDR_DQS_N2
#Other net   PACKAGE_PIN AF27     - DDR4_C0_DQS3_C            Bank 504 - PS_DDR_DQS_N3
#Other net   PACKAGE_PIN M23      - DDR4_C0_DQS4_C            Bank 504 - PS_DDR_DQS_N4
#Other net   PACKAGE_PIN K23      - DDR4_C0_DQS5_C            Bank 504 - PS_DDR_DQS_N5
#Other net   PACKAGE_PIN N27      - DDR4_C0_DQS6_C            Bank 504 - PS_DDR_DQS_N6
#Other net   PACKAGE_PIN J27      - DDR4_C0_DQS7_C            Bank 504 - PS_DDR_DQS_N7
#Other net   PACKAGE_PIN T27      - No Connect                Bank 504 - PS_DDR_DQS_N8
#Other net   PACKAGE_PIN AF21     - DDR4_C0_DQS0_T            Bank 504 - PS_DDR_DQS_P0
#Other net   PACKAGE_PIN AF23     - DDR4_C0_DQS1_T            Bank 504 - PS_DDR_DQS_P1
#Other net   PACKAGE_PIN AF25     - DDR4_C0_DQS2_T            Bank 504 - PS_DDR_DQS_P2
#Other net   PACKAGE_PIN AE27     - DDR4_C0_DQS3_T            Bank 504 - PS_DDR_DQS_P3
#Other net   PACKAGE_PIN N23      - DDR4_C0_DQS4_T            Bank 504 - PS_DDR_DQS_P4
#Other net   PACKAGE_PIN L23      - DDR4_C0_DQS5_T            Bank 504 - PS_DDR_DQS_P5
#Other net   PACKAGE_PIN N26      - DDR4_C0_DQS6_T            Bank 504 - PS_DDR_DQS_P6
#Other net   PACKAGE_PIN J26      - DDR4_C0_DQS7_T            Bank 504 - PS_DDR_DQS_P7
#Other net   PACKAGE_PIN R27      - No Connect                Bank 504 - PS_DDR_DQS_P8
#Other net   PACKAGE_PIN U28      - DDR4_C0_ODT0              Bank 504 - PS_DDR_ODT0
#Other net   PACKAGE_PIN U26      - No Connect                Bank 504 - PS_DDR_ODT1
#Other net   PACKAGE_PIN V24      - DDR4_C0_PARITY            Bank 504 - PS_DDR_PARITY
#Other net   PACKAGE_PIN U23      - DDR4_C0_RESET_B           Bank 504 - PS_DDR_RAM_RST_N
#Other net   PACKAGE_PIN U24      - BANK504_DDR4_ZQ           Bank 504 - PS_DDR_ZQ
#Other net   PACKAGE_PIN F28      - som240_1_a56              Bank 505 - PS_MGTRRXN0_505
#Other net   PACKAGE_PIN D28      - som240_1_c56              Bank 505 - PS_MGTRRXN1_505
#Other net   PACKAGE_PIN B28      - som240_1_b54              Bank 505 - PS_MGTRRXN2_505
#Other net   PACKAGE_PIN A26      - som240_1_d50              Bank 505 - PS_MGTRRXN3_505
#Other net   PACKAGE_PIN F27      - som240_1_a55              Bank 505 - PS_MGTRRXP0_505
#Other net   PACKAGE_PIN D27      - som240_1_c55              Bank 505 - PS_MGTRRXP1_505
#Other net   PACKAGE_PIN B27      - som240_1_b53              Bank 505 - PS_MGTRRXP2_505
#Other net   PACKAGE_PIN A25      - som240_1_d49              Bank 505 - PS_MGTRRXP3_505
#Other net   PACKAGE_PIN E26      - som240_1_b58              Bank 505 - PS_MGTRTXN0_505
#Other net   PACKAGE_PIN D24      - som240_1_a48              Bank 505 - PS_MGTRTXN1_505
#Other net   PACKAGE_PIN C26      - som240_1_d58              Bank 505 - PS_MGTRTXN2_505
#Other net   PACKAGE_PIN B24      - som240_1_c52              Bank 505 - PS_MGTRTXN3_505
#Other net   PACKAGE_PIN E25      - som240_1_b57              Bank 505 - PS_MGTRTXP0_505
#Other net   PACKAGE_PIN D23      - som240_1_a47              Bank 505 - PS_MGTRTXP1_505
#Other net   PACKAGE_PIN C25      - som240_1_d57              Bank 505 - PS_MGTRTXP2_505
#Other net   PACKAGE_PIN B23      - som240_1_c51              Bank 505 - PS_MGTRTXP3_505
#Other net   PACKAGE_PIN F22      - PS_GTRREF_505             Bank 505 - PS_MGTRREF_505
#Other net   PACKAGE_PIN AC10     - som240_2_b59              Bank  43 - VCCO_43
#Other net   PACKAGE_PIN AG12     - som240_2_b59              Bank  43 - VCCO_43
#Other net   PACKAGE_PIN AA14     - som240_2_d59              Bank  44 - VCCO_44
#Other net   PACKAGE_PIN AD13     - som240_2_d59              Bank  44 - VCCO_44
#Other net   PACKAGE_PIN B12      - som240_1_b13              Bank  45 - VCCO_45
#Other net   PACKAGE_PIN E11      - som240_1_b13              Bank  45 - VCCO_45
#Other net   PACKAGE_PIN C15      - VCC_PL_1V80               Bank  46 - VCCO_46
#Other net   PACKAGE_PIN F14      - VCC_PL_1V80               Bank  46 - VCCO_46
#Other net   PACKAGE_PIN AC5      - som240_2_c44              Bank  64 - VCCO_64
#Other net   PACKAGE_PIN AD8      - som240_2_c44              Bank  64 - VCCO_64
#Other net   PACKAGE_PIN AG7      - som240_2_c44              Bank  64 - VCCO_64
#Other net   PACKAGE_PIN H5       - som240_2_a44              Bank  65 - VCCO_65
#Other net   PACKAGE_PIN J3       - som240_2_a44              Bank  65 - VCCO_65
#Other net   PACKAGE_PIN L4       - som240_2_a44              Bank  65 - VCCO_65
#Other net   PACKAGE_PIN B7       - som240_1_d1               Bank  66 - VCCO_66
#Other net   PACKAGE_PIN D3       - som240_1_d1               Bank  66 - VCCO_66
#Other net   PACKAGE_PIN E6       - som240_1_d1               Bank  66 - VCCO_66
#Other net   PACKAGE_PIN AB17     - VCC_PS_1V80               Bank 500 - VCCO_PSIO0_500
#Other net   PACKAGE_PIN AE16     - VCC_PS_1V80               Bank 500 - VCCO_PSIO0_500
#Other net   PACKAGE_PIN AG17     - VCC_PS_1V80               Bank 500 - VCCO_PSIO0_500
#Other net   PACKAGE_PIN H20      - VCC_PS_1V80               Bank 501 - VCCO_PSIO1_501
#Other net   PACKAGE_PIN L19      - VCC_PS_1V80               Bank 501 - VCCO_PSIO1_501
#Other net   PACKAGE_PIN D18      - VCC_PS_1V80               Bank 502 - VCCO_PSIO2_502
#Other net   PACKAGE_PIN G17      - VCC_PS_1V80               Bank 502 - VCCO_PSIO2_502
#Other net   PACKAGE_PIN M17      - VCC_PS_1V80               Bank 503 - VCCO_PSIO3_503
#Other net   PACKAGE_PIN P18      - VCC_PS_1V80               Bank 503 - VCCO_PSIO3_503
#Other net   PACKAGE_PIN AB22     - VCC_PS_1V20               Bank 504 - VCCO_PSDDR_504
#Other net   PACKAGE_PIN AD23     - VCC_PS_1V20               Bank 504 - VCCO_PSDDR_504
#Other net   PACKAGE_PIN AF24     - VCC_PS_1V20               Bank 504 - VCCO_PSDDR_504
#Other net   PACKAGE_PIN P23      - VCC_PS_1V20               Bank 504 - VCCO_PSDDR_504
#Other net   PACKAGE_PIN T24      - VCC_PS_1V20               Bank 504 - VCCO_PSDDR_504
#Other net   PACKAGE_PIN V25      - VCC_PS_1V20               Bank 504 - VCCO_PSDDR_504
#Other net   PACKAGE_PIN Y26      - VCC_PS_1V20               Bank 504 - VCCO_PSDDR_504
#Other net   PACKAGE_PIN A20      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN A24      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN A27      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN A28      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AA1      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AA19     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AA2      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AA24     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AA3      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AA4      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AA5      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AA6      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AA9      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AB12     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AB27     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AC15     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AC20     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AC25     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AD18     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AD3      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AE1      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AE11     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AE21     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AE26     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AE6      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AF14     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AF19     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AF4      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AF9      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AG2      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AG22     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AG27     - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN AH5      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN B17      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN B2       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN B21      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN B25      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN B26      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN C10      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN C20      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN C24      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN C27      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN C28      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN C5       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN D13      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN D21      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN D26      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN D8       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN E16      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN E20      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN E24      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN E27      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN E28      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN F19      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN F21      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN F25      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN F26      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN F4       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN F9       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN G12      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN G2       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN G22      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN G23      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN G24      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN G27      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN G28      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN G7       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN H10      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN H15      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN H25      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN J13      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN J18      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN J23      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN J8       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN K11      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN K16      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN K21      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN K26      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN K6       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN L24      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN L9       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN M1       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN M2       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN M22      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN M27      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN M3       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN M4       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN M5       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN M7       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN N10      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN N12      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN N14      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN N20      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN N25      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN N5       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN P11      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN P3       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN P5       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN P8       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN R1       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN R15      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN R2       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN R21      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN R26      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN R5       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN T10      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN T14      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN T19      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN T3       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN T5       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN T9       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN U1       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN U11      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN U17      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN U2       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN U22      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN U27      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN U6       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN V13      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN V15      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN V3       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN V7       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN W1       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN W18      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN W2       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN W23      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN W6       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN Y11      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN Y16      - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN Y3       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN Y7       - GND                       Bank 999 - GND
#Other net   PACKAGE_PIN W20      - PSADC_AGND                Bank 999 - GND_PSADC
#Other net   PACKAGE_PIN V4       - VCC_PL_MGTAVCC            Bank 999 - MGTAVCC_R
#Other net   PACKAGE_PIN Y4       - VCC_PL_MGTAVCC            Bank 999 - MGTAVCC_R
#Other net   PACKAGE_PIN P4       - VCC_PL_MGTAVTT            Bank 999 - MGTAVTT_R
#Other net   PACKAGE_PIN T4       - VCC_PL_MGTAVTT            Bank 999 - MGTAVTT_R
#Other net   PACKAGE_PIN U5       - VCC_PL_MGTVCCAUX          Bank 999 - MGTVCCAUX_R
#Other net   PACKAGE_PIN W5       - VCC_PL_MGTVCCAUX          Bank 999 - MGTVCCAUX_R
#Other net   PACKAGE_PIN B22      - VCC_PS_GTRAVCC            Bank 999 - PS_MGTRAVCC
#Other net   PACKAGE_PIN D22      - VCC_PS_GTRAVCC            Bank 999 - PS_MGTRAVCC
#Other net   PACKAGE_PIN A23      - VCC_PS_GTRAVTT            Bank 999 - PS_MGTRAVTT
#Other net   PACKAGE_PIN C23      - VCC_PS_GTRAVTT            Bank 999 - PS_MGTRAVTT
#Other net   PACKAGE_PIN D25      - VCC_PS_GTRAVTT            Bank 999 - PS_MGTRAVTT
#Other net   PACKAGE_PIN E23      - VCC_PS_GTRAVTT            Bank 999 - PS_MGTRAVTT
#Other net   PACKAGE_PIN M16      - VCC_PL_1V80               Bank 999 - VCCAUX
#Other net   PACKAGE_PIN N16      - VCC_PL_1V80               Bank 999 - VCCAUX
#Other net   PACKAGE_PIN M13      - VCC_PL_1V80               Bank 999 - VCCAUX_IO
#Other net   PACKAGE_PIN M14      - VCC_PL_1V80               Bank 999 - VCCAUX_IO
#Other net   PACKAGE_PIN M15      - VCC_PL_1V80               Bank 999 - VCCAUX_IO
#Other net   PACKAGE_PIN L11      - VCC_PL_0V85               Bank 999 - VCCBRAM
#Other net   PACKAGE_PIN L12      - VCC_PL_0V85               Bank 999 - VCCBRAM
#Other net   PACKAGE_PIN M11      - VCC_PL_0V85               Bank 999 - VCCBRAM
#Other net   PACKAGE_PIN M12      - VCC_PL_0V85               Bank 999 - VCCBRAM
#Other net   PACKAGE_PIN N11      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN N13      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN N15      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN P10      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN P14      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN P15      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN R10      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN R11      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN R14      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN T11      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN T15      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN U10      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN U14      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN U15      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN V10      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN V11      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN V12      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN V14      - VCC_PL_0V72               Bank 999 - VCCINT
#Other net   PACKAGE_PIN K10      - VCC_PL_0V85               Bank 999 - VCCINT_IO
#Other net   PACKAGE_PIN L10      - VCC_PL_0V85               Bank 999 - VCCINT_IO
#Other net   PACKAGE_PIN M10      - VCC_PL_0V85               Bank 999 - VCCINT_IO
#Other net   PACKAGE_PIN M9       - VCC_PL_0V85               Bank 999 - VCCINT_IO
#Other net   PACKAGE_PIN U21      - VCCINT_VCU                Bank 999 - VCCINT_VCU
#Other net   PACKAGE_PIN V20      - VCCINT_VCU                Bank 999 - VCCINT_VCU
#Other net   PACKAGE_PIN V21      - VCCINT_VCU                Bank 999 - VCCINT_VCU
#Other net   PACKAGE_PIN W21      - VCCINT_VCU                Bank 999 - VCCINT_VCU
#Other net   PACKAGE_PIN Y21      - VCCINT_VCU                Bank 999 - VCCINT_VCU
#Other net   PACKAGE_PIN Y20      - VCC_PSADC                 Bank 999 - VCC_PSADC
#Other net   PACKAGE_PIN U19      - VCC_PS_1V80               Bank 999 - VCC_PSAUX
#Other net   PACKAGE_PIN U20      - VCC_PS_1V80               Bank 999 - VCC_PSAUX
#Other net   PACKAGE_PIN V19      - VCC_PS_1V80               Bank 999 - VCC_PSAUX
#Other net   PACKAGE_PIN W19      - VCC_PS_1V80               Bank 999 - VCC_PSAUX
#Other net   PACKAGE_PIN Y18      - som240_1_a1               Bank 999 - VCC_PSBATT
#Other net   PACKAGE_PIN U16      - VCC_PSDDR_PLL             Bank 999 - VCC_PSDDR_PLL
#Other net   PACKAGE_PIN U18      - VCC_PSDDR_PLL             Bank 999 - VCC_PSDDR_PLL
#Other net   PACKAGE_PIN AA15     - VCC_PS_0V85               Bank 999 - VCC_PSINTFP
#Other net   PACKAGE_PIN AA16     - VCC_PS_0V85               Bank 999 - VCC_PSINTFP
#Other net   PACKAGE_PIN AA17     - VCC_PS_0V85               Bank 999 - VCC_PSINTFP
#Other net   PACKAGE_PIN AA18     - VCC_PS_0V85               Bank 999 - VCC_PSINTFP
#Other net   PACKAGE_PIN AB16     - VCC_PS_0V85               Bank 999 - VCC_PSINTFP
#Other net   PACKAGE_PIN Y15      - VCC_PS_0V85               Bank 999 - VCC_PSINTFP
#Other net   PACKAGE_PIN Y17      - VCC_PS_0V85               Bank 999 - VCC_PSINTFP
#Other net   PACKAGE_PIN AA20     - VCC_PS_0V85               Bank 999 - VCC_PSINTFP_DDR
#Other net   PACKAGE_PIN AA21     - VCC_PS_0V85               Bank 999 - VCC_PSINTFP_DDR
#Other net   PACKAGE_PIN Y19      - VCC_PS_0V85               Bank 999 - VCC_PSINTFP_DDR
#Other net   PACKAGE_PIN V16      - VCC_PS_0V85               Bank 999 - VCC_PSINTLP
#Other net   PACKAGE_PIN V17      - VCC_PS_0V85               Bank 999 - VCC_PSINTLP
#Other net   PACKAGE_PIN V18      - VCC_PS_0V85               Bank 999 - VCC_PSINTLP
#Other net   PACKAGE_PIN W15      - VCC_PS_0V85               Bank 999 - VCC_PSINTLP
#Other net   PACKAGE_PIN W16      - VCC_PS_0V85               Bank 999 - VCC_PSINTLP
#Other net   PACKAGE_PIN W17      - VCC_PS_0V85               Bank 999 - VCC_PSINTLP
#Other net   PACKAGE_PIN T16      - VCC_PS_1V20               Bank 999 - VCC_PSPLL
#Other net   PACKAGE_PIN T17      - VCC_PS_1V20               Bank 999 - VCC_PSPLL
#Other net   PACKAGE_PIN T18      - VCC_PS_1V20               Bank 999 - VCC_PSPLL
