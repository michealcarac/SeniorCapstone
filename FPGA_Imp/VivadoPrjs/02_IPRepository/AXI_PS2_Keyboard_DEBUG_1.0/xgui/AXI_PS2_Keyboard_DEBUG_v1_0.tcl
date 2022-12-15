# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PS2_CLK_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PS2_DEBOUNCE_COUNTER_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TIMER_OUTPUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TIMER_CLOCK_DIVIDER" -parent ${Page_0}


}

proc update_PARAM_VALUE.PS2_CLK_FREQ { PARAM_VALUE.PS2_CLK_FREQ } {
	# Procedure called to update PS2_CLK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PS2_CLK_FREQ { PARAM_VALUE.PS2_CLK_FREQ } {
	# Procedure called to validate PS2_CLK_FREQ
	return true
}

proc update_PARAM_VALUE.PS2_DEBOUNCE_COUNTER_SIZE { PARAM_VALUE.PS2_DEBOUNCE_COUNTER_SIZE } {
	# Procedure called to update PS2_DEBOUNCE_COUNTER_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PS2_DEBOUNCE_COUNTER_SIZE { PARAM_VALUE.PS2_DEBOUNCE_COUNTER_SIZE } {
	# Procedure called to validate PS2_DEBOUNCE_COUNTER_SIZE
	return true
}

proc update_PARAM_VALUE.TIMER_CLOCK_DIVIDER { PARAM_VALUE.TIMER_CLOCK_DIVIDER } {
	# Procedure called to update TIMER_CLOCK_DIVIDER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TIMER_CLOCK_DIVIDER { PARAM_VALUE.TIMER_CLOCK_DIVIDER } {
	# Procedure called to validate TIMER_CLOCK_DIVIDER
	return true
}

proc update_PARAM_VALUE.TIMER_OUTPUT_WIDTH { PARAM_VALUE.TIMER_OUTPUT_WIDTH } {
	# Procedure called to update TIMER_OUTPUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TIMER_OUTPUT_WIDTH { PARAM_VALUE.TIMER_OUTPUT_WIDTH } {
	# Procedure called to validate TIMER_OUTPUT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.PS2_CLK_FREQ { MODELPARAM_VALUE.PS2_CLK_FREQ PARAM_VALUE.PS2_CLK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PS2_CLK_FREQ}] ${MODELPARAM_VALUE.PS2_CLK_FREQ}
}

proc update_MODELPARAM_VALUE.PS2_DEBOUNCE_COUNTER_SIZE { MODELPARAM_VALUE.PS2_DEBOUNCE_COUNTER_SIZE PARAM_VALUE.PS2_DEBOUNCE_COUNTER_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PS2_DEBOUNCE_COUNTER_SIZE}] ${MODELPARAM_VALUE.PS2_DEBOUNCE_COUNTER_SIZE}
}

proc update_MODELPARAM_VALUE.TIMER_OUTPUT_WIDTH { MODELPARAM_VALUE.TIMER_OUTPUT_WIDTH PARAM_VALUE.TIMER_OUTPUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TIMER_OUTPUT_WIDTH}] ${MODELPARAM_VALUE.TIMER_OUTPUT_WIDTH}
}

proc update_MODELPARAM_VALUE.TIMER_CLOCK_DIVIDER { MODELPARAM_VALUE.TIMER_CLOCK_DIVIDER PARAM_VALUE.TIMER_CLOCK_DIVIDER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TIMER_CLOCK_DIVIDER}] ${MODELPARAM_VALUE.TIMER_CLOCK_DIVIDER}
}

