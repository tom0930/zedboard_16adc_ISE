# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "idel" -parent ${Page_0}
  ipgui::add_param $IPINST -name "len_check" -parent ${Page_0}
  ipgui::add_param $IPINST -name "loop" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wd_data" -parent ${Page_0}


}

proc update_PARAM_VALUE.idel { PARAM_VALUE.idel } {
	# Procedure called to update idel when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.idel { PARAM_VALUE.idel } {
	# Procedure called to validate idel
	return true
}

proc update_PARAM_VALUE.len_check { PARAM_VALUE.len_check } {
	# Procedure called to update len_check when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.len_check { PARAM_VALUE.len_check } {
	# Procedure called to validate len_check
	return true
}

proc update_PARAM_VALUE.loop { PARAM_VALUE.loop } {
	# Procedure called to update loop when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.loop { PARAM_VALUE.loop } {
	# Procedure called to validate loop
	return true
}

proc update_PARAM_VALUE.wd_data { PARAM_VALUE.wd_data } {
	# Procedure called to update wd_data when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wd_data { PARAM_VALUE.wd_data } {
	# Procedure called to validate wd_data
	return true
}


proc update_MODELPARAM_VALUE.idel { MODELPARAM_VALUE.idel PARAM_VALUE.idel } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.idel}] ${MODELPARAM_VALUE.idel}
}

proc update_MODELPARAM_VALUE.len_check { MODELPARAM_VALUE.len_check PARAM_VALUE.len_check } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.len_check}] ${MODELPARAM_VALUE.len_check}
}

proc update_MODELPARAM_VALUE.wd_data { MODELPARAM_VALUE.wd_data PARAM_VALUE.wd_data } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wd_data}] ${MODELPARAM_VALUE.wd_data}
}

proc update_MODELPARAM_VALUE.loop { MODELPARAM_VALUE.loop PARAM_VALUE.loop } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.loop}] ${MODELPARAM_VALUE.loop}
}

