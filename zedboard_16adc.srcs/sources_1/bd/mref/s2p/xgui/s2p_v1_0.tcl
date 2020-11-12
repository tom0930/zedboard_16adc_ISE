# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "data" -parent ${Page_0}
  ipgui::add_param $IPINST -name "init" -parent ${Page_0}
  ipgui::add_param $IPINST -name "lsb" -parent ${Page_0}
  ipgui::add_param $IPINST -name "msb" -parent ${Page_0}
  ipgui::add_param $IPINST -name "sysn" -parent ${Page_0}


}

proc update_PARAM_VALUE.data { PARAM_VALUE.data } {
	# Procedure called to update data when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.data { PARAM_VALUE.data } {
	# Procedure called to validate data
	return true
}

proc update_PARAM_VALUE.init { PARAM_VALUE.init } {
	# Procedure called to update init when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.init { PARAM_VALUE.init } {
	# Procedure called to validate init
	return true
}

proc update_PARAM_VALUE.lsb { PARAM_VALUE.lsb } {
	# Procedure called to update lsb when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lsb { PARAM_VALUE.lsb } {
	# Procedure called to validate lsb
	return true
}

proc update_PARAM_VALUE.msb { PARAM_VALUE.msb } {
	# Procedure called to update msb when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.msb { PARAM_VALUE.msb } {
	# Procedure called to validate msb
	return true
}

proc update_PARAM_VALUE.sysn { PARAM_VALUE.sysn } {
	# Procedure called to update sysn when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sysn { PARAM_VALUE.sysn } {
	# Procedure called to validate sysn
	return true
}


proc update_MODELPARAM_VALUE.init { MODELPARAM_VALUE.init PARAM_VALUE.init } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.init}] ${MODELPARAM_VALUE.init}
}

proc update_MODELPARAM_VALUE.sysn { MODELPARAM_VALUE.sysn PARAM_VALUE.sysn } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sysn}] ${MODELPARAM_VALUE.sysn}
}

proc update_MODELPARAM_VALUE.msb { MODELPARAM_VALUE.msb PARAM_VALUE.msb } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.msb}] ${MODELPARAM_VALUE.msb}
}

proc update_MODELPARAM_VALUE.data { MODELPARAM_VALUE.data PARAM_VALUE.data } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.data}] ${MODELPARAM_VALUE.data}
}

proc update_MODELPARAM_VALUE.lsb { MODELPARAM_VALUE.lsb PARAM_VALUE.lsb } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lsb}] ${MODELPARAM_VALUE.lsb}
}

