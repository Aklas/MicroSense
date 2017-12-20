# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "addr_size" -parent ${Page_0}
  ipgui::add_param $IPINST -name "pow_two_Pixel_size" -parent ${Page_0}
  ipgui::add_param $IPINST -name "pseudo_height" -parent ${Page_0}
  ipgui::add_param $IPINST -name "pseudo_width" -parent ${Page_0}


}

proc update_PARAM_VALUE.addr_size { PARAM_VALUE.addr_size } {
	# Procedure called to update addr_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.addr_size { PARAM_VALUE.addr_size } {
	# Procedure called to validate addr_size
	return true
}

proc update_PARAM_VALUE.pow_two_Pixel_size { PARAM_VALUE.pow_two_Pixel_size } {
	# Procedure called to update pow_two_Pixel_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pow_two_Pixel_size { PARAM_VALUE.pow_two_Pixel_size } {
	# Procedure called to validate pow_two_Pixel_size
	return true
}

proc update_PARAM_VALUE.pseudo_height { PARAM_VALUE.pseudo_height } {
	# Procedure called to update pseudo_height when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pseudo_height { PARAM_VALUE.pseudo_height } {
	# Procedure called to validate pseudo_height
	return true
}

proc update_PARAM_VALUE.pseudo_width { PARAM_VALUE.pseudo_width } {
	# Procedure called to update pseudo_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pseudo_width { PARAM_VALUE.pseudo_width } {
	# Procedure called to validate pseudo_width
	return true
}


proc update_MODELPARAM_VALUE.pseudo_width { MODELPARAM_VALUE.pseudo_width PARAM_VALUE.pseudo_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pseudo_width}] ${MODELPARAM_VALUE.pseudo_width}
}

proc update_MODELPARAM_VALUE.pseudo_height { MODELPARAM_VALUE.pseudo_height PARAM_VALUE.pseudo_height } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pseudo_height}] ${MODELPARAM_VALUE.pseudo_height}
}

proc update_MODELPARAM_VALUE.pow_two_Pixel_size { MODELPARAM_VALUE.pow_two_Pixel_size PARAM_VALUE.pow_two_Pixel_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pow_two_Pixel_size}] ${MODELPARAM_VALUE.pow_two_Pixel_size}
}

proc update_MODELPARAM_VALUE.addr_size { MODELPARAM_VALUE.addr_size PARAM_VALUE.addr_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.addr_size}] ${MODELPARAM_VALUE.addr_size}
}

