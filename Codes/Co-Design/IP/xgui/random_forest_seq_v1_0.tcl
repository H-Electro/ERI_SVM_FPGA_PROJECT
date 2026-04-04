# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CROP_SEL_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NODE_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_CROPS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_FEATURES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TOTAL_NODES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TOTAL_TREES" -parent ${Page_0}


}

proc update_PARAM_VALUE.CROP_SEL_W { PARAM_VALUE.CROP_SEL_W } {
	# Procedure called to update CROP_SEL_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CROP_SEL_W { PARAM_VALUE.CROP_SEL_W } {
	# Procedure called to validate CROP_SEL_W
	return true
}

proc update_PARAM_VALUE.DATA_W { PARAM_VALUE.DATA_W } {
	# Procedure called to update DATA_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_W { PARAM_VALUE.DATA_W } {
	# Procedure called to validate DATA_W
	return true
}

proc update_PARAM_VALUE.NODE_W { PARAM_VALUE.NODE_W } {
	# Procedure called to update NODE_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NODE_W { PARAM_VALUE.NODE_W } {
	# Procedure called to validate NODE_W
	return true
}

proc update_PARAM_VALUE.NUM_CROPS { PARAM_VALUE.NUM_CROPS } {
	# Procedure called to update NUM_CROPS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_CROPS { PARAM_VALUE.NUM_CROPS } {
	# Procedure called to validate NUM_CROPS
	return true
}

proc update_PARAM_VALUE.NUM_FEATURES { PARAM_VALUE.NUM_FEATURES } {
	# Procedure called to update NUM_FEATURES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_FEATURES { PARAM_VALUE.NUM_FEATURES } {
	# Procedure called to validate NUM_FEATURES
	return true
}

proc update_PARAM_VALUE.TOTAL_NODES { PARAM_VALUE.TOTAL_NODES } {
	# Procedure called to update TOTAL_NODES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TOTAL_NODES { PARAM_VALUE.TOTAL_NODES } {
	# Procedure called to validate TOTAL_NODES
	return true
}

proc update_PARAM_VALUE.TOTAL_TREES { PARAM_VALUE.TOTAL_TREES } {
	# Procedure called to update TOTAL_TREES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TOTAL_TREES { PARAM_VALUE.TOTAL_TREES } {
	# Procedure called to validate TOTAL_TREES
	return true
}


proc update_MODELPARAM_VALUE.NUM_FEATURES { MODELPARAM_VALUE.NUM_FEATURES PARAM_VALUE.NUM_FEATURES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_FEATURES}] ${MODELPARAM_VALUE.NUM_FEATURES}
}

proc update_MODELPARAM_VALUE.NUM_CROPS { MODELPARAM_VALUE.NUM_CROPS PARAM_VALUE.NUM_CROPS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_CROPS}] ${MODELPARAM_VALUE.NUM_CROPS}
}

proc update_MODELPARAM_VALUE.TOTAL_TREES { MODELPARAM_VALUE.TOTAL_TREES PARAM_VALUE.TOTAL_TREES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TOTAL_TREES}] ${MODELPARAM_VALUE.TOTAL_TREES}
}

proc update_MODELPARAM_VALUE.TOTAL_NODES { MODELPARAM_VALUE.TOTAL_NODES PARAM_VALUE.TOTAL_NODES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TOTAL_NODES}] ${MODELPARAM_VALUE.TOTAL_NODES}
}

proc update_MODELPARAM_VALUE.DATA_W { MODELPARAM_VALUE.DATA_W PARAM_VALUE.DATA_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_W}] ${MODELPARAM_VALUE.DATA_W}
}

proc update_MODELPARAM_VALUE.NODE_W { MODELPARAM_VALUE.NODE_W PARAM_VALUE.NODE_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NODE_W}] ${MODELPARAM_VALUE.NODE_W}
}

proc update_MODELPARAM_VALUE.CROP_SEL_W { MODELPARAM_VALUE.CROP_SEL_W PARAM_VALUE.CROP_SEL_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CROP_SEL_W}] ${MODELPARAM_VALUE.CROP_SEL_W}
}

