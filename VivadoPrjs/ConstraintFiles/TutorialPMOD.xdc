# Edited Kria KV260 Board Constraint for use with the Vision AI Starter Kit

## PMOD (Negating VCC (11,12) and GND (9,10))
# Format:
# 11  9 7 5 3 1
# 12 10 8 6 4 2                                                                                                         PCB->Connector->FPGA        PMOD #
# Ex:  set_property PACKAGE_PIN H12      [get_ports "som240_1_a17"] ;# Bank  45 VCCO - som240_1_b13 - IO_L4N_AD12N_45   PMOD_HDA11->som240_1_A17->H12 1
#set_property PACKAGE_PIN H12      [get_ports {pmod_o[0]}] ;# Bank  45 VCCO - som240_1_b13 - IO_L4N_AD12N_45   PMOD_HDA11->som240_1_A17->H12 1
#set_property PACKAGE_PIN E10      [get_ports {pmod_o[1]}] ;# Bank  45 VCCO - som240_1_b13 - IO_L7P_HDGC_45    PMOD_HDA12->som240_1_D20->E10 3
#set_property PACKAGE_PIN D10      [get_ports {pmod_o[2]}] ;# Bank  45 VCCO - som240_1_b13 - IO_L7N_HDGC_45    PMOD_HDA13->som240_1_D21->D10 5
#set_property PACKAGE_PIN C11      [get_ports {pmod_o[3]}] ;# Bank  45 VCCO - som240_1_b13 - IO_L9P_AD11P_45   PMOD_HDA14->som240_1_D22->C11 7
set_property PACKAGE_PIN B10      [get_ports {GPIO_0_tri_i[0]}] ;# Bank  45 VCCO - som240_1_b13 - IO_L9N_AD11N_45   PMOD_HDA15->som240_1_B20->B10 2
set_property PACKAGE_PIN E12      [get_ports {GPIO_0_tri_i[1]}] ;# Bank  45 VCCO - som240_1_b13 - IO_L8P_HDGC_45 PMOD_HDA16_CC->som240_1_B21->E12 4
set_property PACKAGE_PIN D11      [get_ports {GPIO_0_tri_i[2]}] ;# Bank  45 VCCO - som240_1_b13 - IO_L8N_HDGC_45    PMOD_HDA17->som240_1_B22->D11 6
set_property PACKAGE_PIN B11      [get_ports {GPIO_0_tri_i[3]}] ;# Bank  45 VCCO - som240_1_b13 - IO_L10P_AD10P_45  PMOD_HDA18->som240_1_C22->B11 8

## Clock Options
# Differential Clock (Only the P needs to be constrained)
#set_property PACKAGE_PIN C3       [get_ports "som240_1_a6"] ;# Bank  66 VCCO - som240_1_d1 - IO_L12P_T1U_N10_GC_66  P
#set_property PACKAGE_PIN C2       [get_ports "som240_1_a7"] ;# Bank  66 VCCO - som240_1_d1 - IO_L12N_T1U_N11_GC_66  N
