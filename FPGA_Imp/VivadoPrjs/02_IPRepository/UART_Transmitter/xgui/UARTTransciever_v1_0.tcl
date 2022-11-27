# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "baud_rate" -parent ${Page_0}
  ipgui::add_param $IPINST -name "clk_freq" -parent ${Page_0}
  ipgui::add_param $IPINST -name "d_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "os_rate" -parent ${Page_0}
  ipgui::add_param $IPINST -name "parity" -parent ${Page_0}
  ipgui::add_param $IPINST -name "parity_eo" -parent ${Page_0}


}

proc update_PARAM_VALUE.baud_rate { PARAM_VALUE.baud_rate } {
	# Procedure called to update baud_rate when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.baud_rate { PARAM_VALUE.baud_rate } {
	# Procedure called to validate baud_rate
	return true
}

proc update_PARAM_VALUE.clk_freq { PARAM_VALUE.clk_freq } {
	# Procedure called to update clk_freq when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.clk_freq { PARAM_VALUE.clk_freq } {
	# Procedure called to validate clk_freq
	return true
}

proc update_PARAM_VALUE.d_width { PARAM_VALUE.d_width } {
	# Procedure called to update d_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.d_width { PARAM_VALUE.d_width } {
	# Procedure called to validate d_width
	return true
}

proc update_PARAM_VALUE.os_rate { PARAM_VALUE.os_rate } {
	# Procedure called to update os_rate when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.os_rate { PARAM_VALUE.os_rate } {
	# Procedure called to validate os_rate
	return true
}

proc update_PARAM_VALUE.parity { PARAM_VALUE.parity } {
	# Procedure called to update parity when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.parity { PARAM_VALUE.parity } {
	# Procedure called to validate parity
	return true
}

proc update_PARAM_VALUE.parity_eo { PARAM_VALUE.parity_eo } {
	# Procedure called to update parity_eo when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.parity_eo { PARAM_VALUE.parity_eo } {
	# Procedure called to validate parity_eo
	return true
}


proc update_MODELPARAM_VALUE.clk_freq { MODELPARAM_VALUE.clk_freq PARAM_VALUE.clk_freq } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.clk_freq}] ${MODELPARAM_VALUE.clk_freq}
}

proc update_MODELPARAM_VALUE.baud_rate { MODELPARAM_VALUE.baud_rate PARAM_VALUE.baud_rate } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.baud_rate}] ${MODELPARAM_VALUE.baud_rate}
}

proc update_MODELPARAM_VALUE.os_rate { MODELPARAM_VALUE.os_rate PARAM_VALUE.os_rate } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.os_rate}] ${MODELPARAM_VALUE.os_rate}
}

proc update_MODELPARAM_VALUE.d_width { MODELPARAM_VALUE.d_width PARAM_VALUE.d_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.d_width}] ${MODELPARAM_VALUE.d_width}
}

proc update_MODELPARAM_VALUE.parity { MODELPARAM_VALUE.parity PARAM_VALUE.parity } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.parity}] ${MODELPARAM_VALUE.parity}
}

proc update_MODELPARAM_VALUE.parity_eo { MODELPARAM_VALUE.parity_eo PARAM_VALUE.parity_eo } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.parity_eo}] ${MODELPARAM_VALUE.parity_eo}
}

