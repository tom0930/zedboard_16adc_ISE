
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# bram_rd, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift, Counter_4bit, D_flip_flops_4, div16, s2p, serial_shift

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART em.avnet.com:zed:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: link22
proc create_hier_cell_link22 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link22() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link21
proc create_hier_cell_link21 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link21() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link20
proc create_hier_cell_link20 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link20() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link19
proc create_hier_cell_link19 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link19() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link18
proc create_hier_cell_link18 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link18() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link17
proc create_hier_cell_link17 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link17() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link16
proc create_hier_cell_link16 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link16() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link15
proc create_hier_cell_link15 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link15() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link14
proc create_hier_cell_link14 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link14() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link13
proc create_hier_cell_link13 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link13() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link12
proc create_hier_cell_link12 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link12() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link11
proc create_hier_cell_link11 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link11() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link10
proc create_hier_cell_link10 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link10() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link9
proc create_hier_cell_link9 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link9() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link8
proc create_hier_cell_link8 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link8() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: link7
proc create_hier_cell_link7 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_link7() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 10 -to 0 address
  create_bd_pin -dir I clk_100M
  create_bd_pin -dir I clk_16M
  create_bd_pin -dir I data_in
  create_bd_pin -dir O -from 0 -to 0 data_out
  create_bd_pin -dir O -from 31 -to 0 data_out1
  create_bd_pin -dir I -from 3 -to 0 link
  create_bd_pin -dir O link_err
  create_bd_pin -dir I reset_n

  # Create instance: Counter_4bit_0, and set properties
  set block_name Counter_4bit
  set block_cell_name Counter_4bit_0
  if { [catch {set Counter_4bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_4bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: D_flip_flops_4_0, and set properties
  set block_name D_flip_flops_4
  set block_cell_name D_flip_flops_4_0
  if { [catch {set D_flip_flops_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $D_flip_flops_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: div16_0, and set properties
  set block_name div16
  set block_cell_name div16_0
  if { [catch {set div16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $div16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_16M, and set properties
  set proc_sys_reset_16M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_16M ]

  # Create instance: proc_sys_reset_1M, and set properties
  set proc_sys_reset_1M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1M ]

  # Create instance: s2p_0, and set properties
  set block_name s2p
  set block_cell_name s2p_0
  if { [catch {set s2p_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $s2p_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_shift_0, and set properties
  set block_name serial_shift
  set block_cell_name serial_shift_0
  if { [catch {set serial_shift_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_shift_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net Counter_4bit_0_out3 [get_bd_pins Counter_4bit_0/out3] [get_bd_pins D_flip_flops_4_0/D3]
  connect_bd_net -net D_flip_flops_4_0_Q1 [get_bd_pins D_flip_flops_4_0/D2] [get_bd_pins D_flip_flops_4_0/Q1]
  connect_bd_net -net D_flip_flops_4_0_Q1B [get_bd_pins D_flip_flops_4_0/Q1B] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net D_flip_flops_4_0_Q2B [get_bd_pins D_flip_flops_4_0/Q2B] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net D_flip_flops_4_0_Q3 [get_bd_pins D_flip_flops_4_0/D4] [get_bd_pins D_flip_flops_4_0/Q3]
  connect_bd_net -net D_flip_flops_4_0_Q3B [get_bd_pins Counter_4bit_0/ent] [get_bd_pins D_flip_flops_4_0/Q3B]
  connect_bd_net -net clk_100M_1 [get_bd_pins clk_100M] [get_bd_pins s2p_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_16M] [get_bd_pins Counter_4bit_0/clk] [get_bd_pins D_flip_flops_4_0/clk] [get_bd_pins div16_0/clk] [get_bd_pins proc_sys_reset_16M/slowest_sync_clk]
  connect_bd_net -net data_in_1 [get_bd_pins data_in] [get_bd_pins Counter_4bit_0/enp] [get_bd_pins D_flip_flops_4_0/D1] [get_bd_pins serial_shift_0/data_in] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net div16_0_clk_div [get_bd_pins div16_0/clk_div] [get_bd_pins proc_sys_reset_1M/slowest_sync_clk] [get_bd_pins s2p_0/clk] [get_bd_pins serial_shift_0/clk]
  connect_bd_net -net link_1 [get_bd_pins link] [get_bd_pins s2p_0/link]
  connect_bd_net -net proc_sys_reset_16M_peripheral_aresetn [get_bd_pins div16_0/rstn] [get_bd_pins proc_sys_reset_16M/peripheral_aresetn]
  connect_bd_net -net reset_n_1 [get_bd_pins Counter_4bit_0/rstn] [get_bd_pins D_flip_flops_4_0/rstn] [get_bd_pins proc_sys_reset_1M/peripheral_aresetn] [get_bd_pins s2p_0/rstn] [get_bd_pins serial_shift_0/rstn]
  connect_bd_net -net reset_n_2 [get_bd_pins reset_n] [get_bd_pins proc_sys_reset_16M/ext_reset_in] [get_bd_pins proc_sys_reset_1M/ext_reset_in] [get_bd_pins s2p_0/rstn_100M]
  connect_bd_net -net s2p_0_address [get_bd_pins address] [get_bd_pins s2p_0/address]
  connect_bd_net -net s2p_0_data_out [get_bd_pins data_out1] [get_bd_pins s2p_0/data_out]
  connect_bd_net -net s2p_0_link_err [get_bd_pins link_err] [get_bd_pins s2p_0/link_err]
  connect_bd_net -net serial_shift_0_Q4 [get_bd_pins serial_shift_0/Q4] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net serial_shift_0_Q5 [get_bd_pins serial_shift_0/Q5] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Counter_4bit_0/loadn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins data_out] [get_bd_pins s2p_0/data_in] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Counter_4bit_0/value] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports
  set link0_data_in [ create_bd_port -dir I link0_data_in ]
  set link0_data_out [ create_bd_port -dir O -from 0 -to 0 link0_data_out ]

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list \
   CONFIG.c_include_sg {0} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {26} \
 ] $axi_dma_0

  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 axis_data_fifo_0 ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {256} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.TDATA_NUM_BYTES {4} \
 ] $axis_data_fifo_0

  # Create instance: blk_mem_gen_0a, and set properties
  set blk_mem_gen_0a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0a

  # Create instance: blk_mem_gen_0b, and set properties
  set blk_mem_gen_0b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0b

  # Create instance: blk_mem_gen_10a, and set properties
  set blk_mem_gen_10a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_10a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_10a

  # Create instance: blk_mem_gen_10b, and set properties
  set blk_mem_gen_10b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_10b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_10b

  # Create instance: blk_mem_gen_11a, and set properties
  set blk_mem_gen_11a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_11a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {WRITE_FIRST} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_11a

  # Create instance: blk_mem_gen_11b, and set properties
  set blk_mem_gen_11b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_11b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_11b

  # Create instance: blk_mem_gen_12a, and set properties
  set blk_mem_gen_12a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_12a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_12a

  # Create instance: blk_mem_gen_12b, and set properties
  set blk_mem_gen_12b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_12b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_12b

  # Create instance: blk_mem_gen_13a, and set properties
  set blk_mem_gen_13a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_13a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_13a

  # Create instance: blk_mem_gen_13b, and set properties
  set blk_mem_gen_13b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_13b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_13b

  # Create instance: blk_mem_gen_14a, and set properties
  set blk_mem_gen_14a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_14a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_14a

  # Create instance: blk_mem_gen_14b, and set properties
  set blk_mem_gen_14b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_14b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_14b

  # Create instance: blk_mem_gen_15a, and set properties
  set blk_mem_gen_15a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_15a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_15a

  # Create instance: blk_mem_gen_15b, and set properties
  set blk_mem_gen_15b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_15b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_15b

  # Create instance: blk_mem_gen_1a, and set properties
  set blk_mem_gen_1a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_1a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_1a

  # Create instance: blk_mem_gen_1b, and set properties
  set blk_mem_gen_1b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_1b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_1b

  # Create instance: blk_mem_gen_2a, and set properties
  set blk_mem_gen_2a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_2a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_2a

  # Create instance: blk_mem_gen_2b, and set properties
  set blk_mem_gen_2b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_2b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_2b

  # Create instance: blk_mem_gen_3a, and set properties
  set blk_mem_gen_3a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_3a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_3a

  # Create instance: blk_mem_gen_3b, and set properties
  set blk_mem_gen_3b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_3b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_3b

  # Create instance: blk_mem_gen_4a, and set properties
  set blk_mem_gen_4a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_4a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_4a

  # Create instance: blk_mem_gen_4b, and set properties
  set blk_mem_gen_4b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_4b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_4b

  # Create instance: blk_mem_gen_5a, and set properties
  set blk_mem_gen_5a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_5a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_5a

  # Create instance: blk_mem_gen_5b, and set properties
  set blk_mem_gen_5b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_5b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {WRITE_FIRST} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_5b

  # Create instance: blk_mem_gen_6a, and set properties
  set blk_mem_gen_6a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_6a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_6a

  # Create instance: blk_mem_gen_6b, and set properties
  set blk_mem_gen_6b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_6b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_6b

  # Create instance: blk_mem_gen_7a, and set properties
  set blk_mem_gen_7a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_7a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_7a

  # Create instance: blk_mem_gen_7b, and set properties
  set blk_mem_gen_7b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_7b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_7b

  # Create instance: blk_mem_gen_8a, and set properties
  set blk_mem_gen_8a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_8a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_8a

  # Create instance: blk_mem_gen_8b, and set properties
  set blk_mem_gen_8b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_8b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_8b

  # Create instance: blk_mem_gen_9a, and set properties
  set blk_mem_gen_9a [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_9a ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_9a

  # Create instance: blk_mem_gen_9b, and set properties
  set blk_mem_gen_9b [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_9b ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_9b

  # Create instance: bram_rd_0, and set properties
  set block_name bram_rd
  set block_cell_name bram_rd_0
  if { [catch {set bram_rd_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bram_rd_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {191.387} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {16.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {62.500} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: link7
  create_hier_cell_link7 [current_bd_instance .] link7

  # Create instance: link8
  create_hier_cell_link8 [current_bd_instance .] link8

  # Create instance: link9
  create_hier_cell_link9 [current_bd_instance .] link9

  # Create instance: link10
  create_hier_cell_link10 [current_bd_instance .] link10

  # Create instance: link11
  create_hier_cell_link11 [current_bd_instance .] link11

  # Create instance: link12
  create_hier_cell_link12 [current_bd_instance .] link12

  # Create instance: link13
  create_hier_cell_link13 [current_bd_instance .] link13

  # Create instance: link14
  create_hier_cell_link14 [current_bd_instance .] link14

  # Create instance: link15
  create_hier_cell_link15 [current_bd_instance .] link15

  # Create instance: link16
  create_hier_cell_link16 [current_bd_instance .] link16

  # Create instance: link17
  create_hier_cell_link17 [current_bd_instance .] link17

  # Create instance: link18
  create_hier_cell_link18 [current_bd_instance .] link18

  # Create instance: link19
  create_hier_cell_link19 [current_bd_instance .] link19

  # Create instance: link20
  create_hier_cell_link20 [current_bd_instance .] link20

  # Create instance: link21
  create_hier_cell_link21 [current_bd_instance .] link21

  # Create instance: link22
  create_hier_cell_link22 [current_bd_instance .] link22

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666667} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_EMIO_TTC0 {1} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_QSPI {1} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_TTC0 {1} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_EN_USB0 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {150.000000} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_I2C_RESET_ENABLE {1} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {disabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {disabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {disabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {disabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {disabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {inout} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {disabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {inout} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {disabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {out} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {disabled} \
   CONFIG.PCW_MIO_16_SLEW {fast} \
   CONFIG.PCW_MIO_17_DIRECTION {out} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {disabled} \
   CONFIG.PCW_MIO_17_SLEW {fast} \
   CONFIG.PCW_MIO_18_DIRECTION {out} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {disabled} \
   CONFIG.PCW_MIO_18_SLEW {fast} \
   CONFIG.PCW_MIO_19_DIRECTION {out} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {disabled} \
   CONFIG.PCW_MIO_19_SLEW {fast} \
   CONFIG.PCW_MIO_1_DIRECTION {out} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {disabled} \
   CONFIG.PCW_MIO_1_SLEW {fast} \
   CONFIG.PCW_MIO_20_DIRECTION {out} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {disabled} \
   CONFIG.PCW_MIO_20_SLEW {fast} \
   CONFIG.PCW_MIO_21_DIRECTION {out} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {disabled} \
   CONFIG.PCW_MIO_21_SLEW {fast} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {disabled} \
   CONFIG.PCW_MIO_22_SLEW {fast} \
   CONFIG.PCW_MIO_23_DIRECTION {in} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {disabled} \
   CONFIG.PCW_MIO_23_SLEW {fast} \
   CONFIG.PCW_MIO_24_DIRECTION {in} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {disabled} \
   CONFIG.PCW_MIO_24_SLEW {fast} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {disabled} \
   CONFIG.PCW_MIO_25_SLEW {fast} \
   CONFIG.PCW_MIO_26_DIRECTION {in} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {disabled} \
   CONFIG.PCW_MIO_26_SLEW {fast} \
   CONFIG.PCW_MIO_27_DIRECTION {in} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {disabled} \
   CONFIG.PCW_MIO_27_SLEW {fast} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_28_PULLUP {disabled} \
   CONFIG.PCW_MIO_28_SLEW {fast} \
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {disabled} \
   CONFIG.PCW_MIO_29_SLEW {fast} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {fast} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {disabled} \
   CONFIG.PCW_MIO_30_SLEW {fast} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_31_PULLUP {disabled} \
   CONFIG.PCW_MIO_31_SLEW {fast} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_32_PULLUP {disabled} \
   CONFIG.PCW_MIO_32_SLEW {fast} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_33_PULLUP {disabled} \
   CONFIG.PCW_MIO_33_SLEW {fast} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_34_PULLUP {disabled} \
   CONFIG.PCW_MIO_34_SLEW {fast} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_35_PULLUP {disabled} \
   CONFIG.PCW_MIO_35_SLEW {fast} \
   CONFIG.PCW_MIO_36_DIRECTION {in} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_36_PULLUP {disabled} \
   CONFIG.PCW_MIO_36_SLEW {fast} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_37_PULLUP {disabled} \
   CONFIG.PCW_MIO_37_SLEW {fast} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_38_PULLUP {disabled} \
   CONFIG.PCW_MIO_38_SLEW {fast} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_39_PULLUP {disabled} \
   CONFIG.PCW_MIO_39_SLEW {fast} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {fast} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_40_PULLUP {disabled} \
   CONFIG.PCW_MIO_40_SLEW {fast} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_41_PULLUP {disabled} \
   CONFIG.PCW_MIO_41_SLEW {fast} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_42_PULLUP {disabled} \
   CONFIG.PCW_MIO_42_SLEW {fast} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_43_PULLUP {disabled} \
   CONFIG.PCW_MIO_43_SLEW {fast} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_44_PULLUP {disabled} \
   CONFIG.PCW_MIO_44_SLEW {fast} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_45_PULLUP {disabled} \
   CONFIG.PCW_MIO_45_SLEW {fast} \
   CONFIG.PCW_MIO_46_DIRECTION {in} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_46_PULLUP {disabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {in} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_47_PULLUP {disabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {out} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {disabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {in} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {disabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {fast} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {disabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_51_PULLUP {disabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {out} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {disabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {disabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {fast} \
   CONFIG.PCW_MIO_6_DIRECTION {out} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {fast} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {fast} \
   CONFIG.PCW_MIO_9_DIRECTION {inout} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {disabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#UART 1#UART 1#GPIO#GPIO#Enet 0#Enet 0} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#gpio[7]#gpio[8]#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#gpio[14]#gpio[15]#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#wp#cd#tx#rx#gpio[50]#gpio[51]#mdc#mdio} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_WP_IO {MIO 46} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {20} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_TTC0_TTC0_IO {EMIO} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {20} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.41} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.411} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.341} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.358} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {2048 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.025} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.028} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.001} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.001} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333313} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J128M16 HA-15E} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {14} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {45.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {36.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {49.5} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {1} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_USE_M_AXI_GP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
   CONFIG.preset {ZedBoard} \
 ] $processing_system7_0

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]

  # Create instance: smartconnect_1, and set properties
  set smartconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_1 ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {7} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_2

  # Create interface connections
  connect_bd_intf_net -intf_net axi_dma_0_M_AXIS_MM2S [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] [get_bd_intf_pins bram_rd_0/s_axis]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_MM2S [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins smartconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins smartconnect_0/S01_AXI]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM] [get_bd_intf_pins axis_data_fifo_0/M_AXIS]
  connect_bd_intf_net -intf_net bram_rd_0_m_axis [get_bd_intf_pins axis_data_fifo_0/S_AXIS] [get_bd_intf_pins bram_rd_0/m_axis]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins smartconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins processing_system7_0/S_AXI_HP0] [get_bd_intf_pins smartconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_1_M00_AXI [get_bd_intf_pins axi_dma_0/S_AXI_LITE] [get_bd_intf_pins smartconnect_1/M00_AXI]

  # Create port connections
  connect_bd_net -net blk_mem_gen_0a_doutb [get_bd_pins blk_mem_gen_0a/doutb] [get_bd_pins bram_rd_0/data0a]
  connect_bd_net -net blk_mem_gen_0b_doutb [get_bd_pins blk_mem_gen_0b/doutb] [get_bd_pins bram_rd_0/data0b]
  connect_bd_net -net blk_mem_gen_10a_doutb [get_bd_pins blk_mem_gen_10a/doutb] [get_bd_pins bram_rd_0/data10a]
  connect_bd_net -net blk_mem_gen_10b_doutb [get_bd_pins blk_mem_gen_10b/doutb] [get_bd_pins bram_rd_0/data10b]
  connect_bd_net -net blk_mem_gen_11a_doutb [get_bd_pins blk_mem_gen_11a/doutb] [get_bd_pins bram_rd_0/data11a]
  connect_bd_net -net blk_mem_gen_11b_doutb [get_bd_pins blk_mem_gen_11b/doutb] [get_bd_pins bram_rd_0/data11b]
  connect_bd_net -net blk_mem_gen_12a_doutb [get_bd_pins blk_mem_gen_12a/doutb] [get_bd_pins bram_rd_0/data12a]
  connect_bd_net -net blk_mem_gen_12b_doutb [get_bd_pins blk_mem_gen_12b/doutb] [get_bd_pins bram_rd_0/data12b]
  connect_bd_net -net blk_mem_gen_13a_doutb [get_bd_pins blk_mem_gen_13a/doutb] [get_bd_pins bram_rd_0/data13a]
  connect_bd_net -net blk_mem_gen_13b_doutb [get_bd_pins blk_mem_gen_13b/doutb] [get_bd_pins bram_rd_0/data13b]
  connect_bd_net -net blk_mem_gen_14a_doutb [get_bd_pins blk_mem_gen_14a/doutb] [get_bd_pins bram_rd_0/data14a]
  connect_bd_net -net blk_mem_gen_14b_doutb [get_bd_pins blk_mem_gen_14b/doutb] [get_bd_pins bram_rd_0/data14b]
  connect_bd_net -net blk_mem_gen_15a_doutb [get_bd_pins blk_mem_gen_15a/doutb] [get_bd_pins bram_rd_0/data15a]
  connect_bd_net -net blk_mem_gen_15b_doutb [get_bd_pins blk_mem_gen_15b/doutb] [get_bd_pins bram_rd_0/data15b]
  connect_bd_net -net blk_mem_gen_1a_doutb [get_bd_pins blk_mem_gen_1a/doutb] [get_bd_pins bram_rd_0/data1a]
  connect_bd_net -net blk_mem_gen_1b_doutb [get_bd_pins blk_mem_gen_1b/doutb] [get_bd_pins bram_rd_0/data1b]
  connect_bd_net -net blk_mem_gen_2a_doutb [get_bd_pins blk_mem_gen_2a/doutb] [get_bd_pins bram_rd_0/data2a]
  connect_bd_net -net blk_mem_gen_2b_doutb [get_bd_pins blk_mem_gen_2b/doutb] [get_bd_pins bram_rd_0/data2b]
  connect_bd_net -net blk_mem_gen_3a_doutb [get_bd_pins blk_mem_gen_3a/doutb] [get_bd_pins bram_rd_0/data3a]
  connect_bd_net -net blk_mem_gen_3b_doutb [get_bd_pins blk_mem_gen_3b/doutb] [get_bd_pins bram_rd_0/data3b]
  connect_bd_net -net blk_mem_gen_4a_doutb [get_bd_pins blk_mem_gen_4a/doutb] [get_bd_pins bram_rd_0/data4a]
  connect_bd_net -net blk_mem_gen_4b_doutb [get_bd_pins blk_mem_gen_4b/doutb] [get_bd_pins bram_rd_0/data4b]
  connect_bd_net -net blk_mem_gen_5a_doutb [get_bd_pins blk_mem_gen_5a/doutb] [get_bd_pins bram_rd_0/data5a]
  connect_bd_net -net blk_mem_gen_5b_doutb [get_bd_pins blk_mem_gen_5b/doutb] [get_bd_pins bram_rd_0/data5b]
  connect_bd_net -net blk_mem_gen_6a_doutb [get_bd_pins blk_mem_gen_6a/doutb] [get_bd_pins bram_rd_0/data6a]
  connect_bd_net -net blk_mem_gen_6b_doutb [get_bd_pins blk_mem_gen_6b/doutb] [get_bd_pins bram_rd_0/data6b]
  connect_bd_net -net blk_mem_gen_7a_doutb [get_bd_pins blk_mem_gen_7a/doutb] [get_bd_pins bram_rd_0/data7a]
  connect_bd_net -net blk_mem_gen_7b_doutb [get_bd_pins blk_mem_gen_7b/doutb] [get_bd_pins bram_rd_0/data7b]
  connect_bd_net -net blk_mem_gen_8a_doutb [get_bd_pins blk_mem_gen_8a/doutb] [get_bd_pins bram_rd_0/data8a]
  connect_bd_net -net blk_mem_gen_8b_doutb [get_bd_pins blk_mem_gen_8b/doutb] [get_bd_pins bram_rd_0/data8b]
  connect_bd_net -net blk_mem_gen_9a_doutb [get_bd_pins blk_mem_gen_9a/doutb] [get_bd_pins bram_rd_0/data9a]
  connect_bd_net -net blk_mem_gen_9b_doutb [get_bd_pins blk_mem_gen_9b/doutb] [get_bd_pins bram_rd_0/data9b]
  connect_bd_net -net bram_rd_0_addr0a [get_bd_pins blk_mem_gen_0a/addrb] [get_bd_pins bram_rd_0/addr0a]
  connect_bd_net -net bram_rd_0_addr0b [get_bd_pins blk_mem_gen_0b/addrb] [get_bd_pins bram_rd_0/addr0b]
  connect_bd_net -net bram_rd_0_addr10a [get_bd_pins blk_mem_gen_10a/addrb] [get_bd_pins bram_rd_0/addr10a]
  connect_bd_net -net bram_rd_0_addr10b [get_bd_pins blk_mem_gen_10b/addrb] [get_bd_pins bram_rd_0/addr10b]
  connect_bd_net -net bram_rd_0_addr11a [get_bd_pins blk_mem_gen_11a/addrb] [get_bd_pins bram_rd_0/addr11a]
  connect_bd_net -net bram_rd_0_addr11b [get_bd_pins blk_mem_gen_11b/addrb] [get_bd_pins bram_rd_0/addr11b]
  connect_bd_net -net bram_rd_0_addr12a [get_bd_pins blk_mem_gen_12a/addrb] [get_bd_pins bram_rd_0/addr12a]
  connect_bd_net -net bram_rd_0_addr12b [get_bd_pins blk_mem_gen_12b/addrb] [get_bd_pins bram_rd_0/addr12b]
  connect_bd_net -net bram_rd_0_addr13a [get_bd_pins blk_mem_gen_13a/addrb] [get_bd_pins bram_rd_0/addr13a]
  connect_bd_net -net bram_rd_0_addr13b [get_bd_pins blk_mem_gen_13b/addrb] [get_bd_pins bram_rd_0/addr13b]
  connect_bd_net -net bram_rd_0_addr14a [get_bd_pins blk_mem_gen_14a/addrb] [get_bd_pins bram_rd_0/addr14a]
  connect_bd_net -net bram_rd_0_addr14b [get_bd_pins blk_mem_gen_14b/addrb] [get_bd_pins bram_rd_0/addr14b]
  connect_bd_net -net bram_rd_0_addr15a [get_bd_pins blk_mem_gen_15a/addrb] [get_bd_pins bram_rd_0/addr15a]
  connect_bd_net -net bram_rd_0_addr15b [get_bd_pins blk_mem_gen_15b/addrb] [get_bd_pins bram_rd_0/addr15b]
  connect_bd_net -net bram_rd_0_addr1a [get_bd_pins blk_mem_gen_1a/addrb] [get_bd_pins bram_rd_0/addr1a]
  connect_bd_net -net bram_rd_0_addr1b [get_bd_pins blk_mem_gen_1b/addrb] [get_bd_pins bram_rd_0/addr1b]
  connect_bd_net -net bram_rd_0_addr2a [get_bd_pins blk_mem_gen_2a/addrb] [get_bd_pins bram_rd_0/addr2a]
  connect_bd_net -net bram_rd_0_addr2b [get_bd_pins blk_mem_gen_2b/addrb] [get_bd_pins bram_rd_0/addr2b]
  connect_bd_net -net bram_rd_0_addr3a [get_bd_pins blk_mem_gen_3a/addrb] [get_bd_pins bram_rd_0/addr3a]
  connect_bd_net -net bram_rd_0_addr3b [get_bd_pins blk_mem_gen_3b/addrb] [get_bd_pins bram_rd_0/addr3b]
  connect_bd_net -net bram_rd_0_addr4a [get_bd_pins blk_mem_gen_4a/addrb] [get_bd_pins bram_rd_0/addr4a]
  connect_bd_net -net bram_rd_0_addr4b [get_bd_pins blk_mem_gen_4b/addrb] [get_bd_pins bram_rd_0/addr4b]
  connect_bd_net -net bram_rd_0_addr5a [get_bd_pins blk_mem_gen_5a/addrb] [get_bd_pins bram_rd_0/addr5a]
  connect_bd_net -net bram_rd_0_addr5b [get_bd_pins blk_mem_gen_5b/addrb] [get_bd_pins bram_rd_0/addr5b]
  connect_bd_net -net bram_rd_0_addr6a [get_bd_pins blk_mem_gen_6a/addrb] [get_bd_pins bram_rd_0/addr6a]
  connect_bd_net -net bram_rd_0_addr6b [get_bd_pins blk_mem_gen_6b/addrb] [get_bd_pins bram_rd_0/addr6b]
  connect_bd_net -net bram_rd_0_addr7a [get_bd_pins blk_mem_gen_7a/addrb] [get_bd_pins bram_rd_0/addr7a]
  connect_bd_net -net bram_rd_0_addr7b [get_bd_pins blk_mem_gen_7b/addrb] [get_bd_pins bram_rd_0/addr7b]
  connect_bd_net -net bram_rd_0_addr8a [get_bd_pins blk_mem_gen_8a/addrb] [get_bd_pins bram_rd_0/addr8a]
  connect_bd_net -net bram_rd_0_addr8b [get_bd_pins blk_mem_gen_8b/addrb] [get_bd_pins bram_rd_0/addr8b]
  connect_bd_net -net bram_rd_0_addr9a [get_bd_pins blk_mem_gen_9a/addrb] [get_bd_pins bram_rd_0/addr9a]
  connect_bd_net -net bram_rd_0_addr9b [get_bd_pins blk_mem_gen_9b/addrb] [get_bd_pins bram_rd_0/addr9b]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins link10/clk_16M] [get_bd_pins link11/clk_16M] [get_bd_pins link12/clk_16M] [get_bd_pins link13/clk_16M] [get_bd_pins link14/clk_16M] [get_bd_pins link15/clk_16M] [get_bd_pins link16/clk_16M] [get_bd_pins link17/clk_16M] [get_bd_pins link18/clk_16M] [get_bd_pins link19/clk_16M] [get_bd_pins link20/clk_16M] [get_bd_pins link21/clk_16M] [get_bd_pins link22/clk_16M] [get_bd_pins link7/clk_16M] [get_bd_pins link8/clk_16M] [get_bd_pins link9/clk_16M]
  connect_bd_net -net data_in_1 [get_bd_ports link0_data_in] [get_bd_pins link10/data_in] [get_bd_pins link11/data_in] [get_bd_pins link12/data_in] [get_bd_pins link13/data_in] [get_bd_pins link14/data_in] [get_bd_pins link15/data_in] [get_bd_pins link16/data_in] [get_bd_pins link17/data_in] [get_bd_pins link18/data_in] [get_bd_pins link19/data_in] [get_bd_pins link20/data_in] [get_bd_pins link21/data_in] [get_bd_pins link22/data_in] [get_bd_pins link7/data_in] [get_bd_pins link8/data_in] [get_bd_pins link9/data_in]
  connect_bd_net -net link0_data_out1 [get_bd_ports link0_data_out] [get_bd_pins link7/data_out]
  connect_bd_net -net link10_address [get_bd_pins blk_mem_gen_3a/addra] [get_bd_pins blk_mem_gen_3b/addra] [get_bd_pins link10/address]
  connect_bd_net -net link10_data_out1 [get_bd_pins blk_mem_gen_3a/dina] [get_bd_pins blk_mem_gen_3b/dina] [get_bd_pins link10/data_out1]
  connect_bd_net -net link11_address [get_bd_pins blk_mem_gen_4a/addra] [get_bd_pins blk_mem_gen_4b/addra] [get_bd_pins link11/address]
  connect_bd_net -net link11_data_out1 [get_bd_pins blk_mem_gen_4a/dina] [get_bd_pins blk_mem_gen_4b/dina] [get_bd_pins link11/data_out1]
  connect_bd_net -net link12_address [get_bd_pins blk_mem_gen_5a/addra] [get_bd_pins blk_mem_gen_5b/addra] [get_bd_pins link12/address]
  connect_bd_net -net link12_data_out1 [get_bd_pins blk_mem_gen_5a/dina] [get_bd_pins blk_mem_gen_5b/dina] [get_bd_pins link12/data_out1]
  connect_bd_net -net link13_address [get_bd_pins blk_mem_gen_6a/addra] [get_bd_pins blk_mem_gen_6b/addra] [get_bd_pins link13/address]
  connect_bd_net -net link13_data_out1 [get_bd_pins blk_mem_gen_6a/dina] [get_bd_pins blk_mem_gen_6b/dina] [get_bd_pins link13/data_out1]
  connect_bd_net -net link14_address [get_bd_pins blk_mem_gen_7a/addra] [get_bd_pins blk_mem_gen_7b/addra] [get_bd_pins link14/address]
  connect_bd_net -net link14_data_out1 [get_bd_pins blk_mem_gen_7a/dina] [get_bd_pins blk_mem_gen_7b/dina] [get_bd_pins link14/data_out1]
  connect_bd_net -net link15_address [get_bd_pins blk_mem_gen_8a/addra] [get_bd_pins blk_mem_gen_8b/addra] [get_bd_pins link15/address]
  connect_bd_net -net link15_data_out1 [get_bd_pins blk_mem_gen_8a/dina] [get_bd_pins blk_mem_gen_8b/dina] [get_bd_pins link15/data_out1]
  connect_bd_net -net link16_address [get_bd_pins blk_mem_gen_9a/addra] [get_bd_pins blk_mem_gen_9b/addra] [get_bd_pins link16/address]
  connect_bd_net -net link16_data_out1 [get_bd_pins blk_mem_gen_9a/dina] [get_bd_pins blk_mem_gen_9b/dina] [get_bd_pins link16/data_out1]
  connect_bd_net -net link17_address [get_bd_pins blk_mem_gen_10a/addra] [get_bd_pins blk_mem_gen_10b/addra] [get_bd_pins link17/address]
  connect_bd_net -net link17_data_out1 [get_bd_pins blk_mem_gen_10a/dina] [get_bd_pins blk_mem_gen_10b/dina] [get_bd_pins link17/data_out1]
  connect_bd_net -net link18_address [get_bd_pins blk_mem_gen_11a/addra] [get_bd_pins blk_mem_gen_11b/addra] [get_bd_pins link18/address]
  connect_bd_net -net link18_data_out1 [get_bd_pins blk_mem_gen_11a/dina] [get_bd_pins blk_mem_gen_11b/dina] [get_bd_pins link18/data_out1]
  connect_bd_net -net link19_address [get_bd_pins blk_mem_gen_12a/addra] [get_bd_pins blk_mem_gen_12b/addra] [get_bd_pins link19/address]
  connect_bd_net -net link19_data_out1 [get_bd_pins blk_mem_gen_12a/dina] [get_bd_pins blk_mem_gen_12b/dina] [get_bd_pins link19/data_out1]
  connect_bd_net -net link20_address [get_bd_pins blk_mem_gen_13a/addra] [get_bd_pins blk_mem_gen_13b/addra] [get_bd_pins link20/address]
  connect_bd_net -net link20_data_out1 [get_bd_pins blk_mem_gen_13a/dina] [get_bd_pins blk_mem_gen_13b/dina] [get_bd_pins link20/data_out1]
  connect_bd_net -net link21_address [get_bd_pins blk_mem_gen_14a/addra] [get_bd_pins blk_mem_gen_14b/addra] [get_bd_pins link21/address]
  connect_bd_net -net link21_data_out1 [get_bd_pins blk_mem_gen_14a/dina] [get_bd_pins blk_mem_gen_14b/dina] [get_bd_pins link21/data_out1]
  connect_bd_net -net link22_address [get_bd_pins blk_mem_gen_15a/addra] [get_bd_pins blk_mem_gen_15b/addra] [get_bd_pins link22/address]
  connect_bd_net -net link22_data_out1 [get_bd_pins blk_mem_gen_15a/dina] [get_bd_pins blk_mem_gen_15b/dina] [get_bd_pins link22/data_out1]
  connect_bd_net -net link7_address [get_bd_pins blk_mem_gen_0a/addra] [get_bd_pins blk_mem_gen_0b/addra] [get_bd_pins link7/address]
  connect_bd_net -net link7_data_out1 [get_bd_pins blk_mem_gen_0a/dina] [get_bd_pins blk_mem_gen_0b/dina] [get_bd_pins link7/data_out1]
  connect_bd_net -net link8_address [get_bd_pins blk_mem_gen_1a/addra] [get_bd_pins blk_mem_gen_1b/addra] [get_bd_pins link8/address]
  connect_bd_net -net link8_data_out1 [get_bd_pins blk_mem_gen_1a/dina] [get_bd_pins blk_mem_gen_1b/dina] [get_bd_pins link8/data_out1]
  connect_bd_net -net link9_address [get_bd_pins blk_mem_gen_2a/addra] [get_bd_pins blk_mem_gen_2b/addra] [get_bd_pins link9/address]
  connect_bd_net -net link9_data_out1 [get_bd_pins blk_mem_gen_2a/dina] [get_bd_pins blk_mem_gen_2b/dina] [get_bd_pins link9/data_out1]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axis_data_fifo_0/s_axis_aresetn] [get_bd_pins bram_rd_0/rstn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins smartconnect_0/aresetn] [get_bd_pins smartconnect_1/aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axis_data_fifo_0/s_axis_aclk] [get_bd_pins blk_mem_gen_0a/clka] [get_bd_pins blk_mem_gen_0a/clkb] [get_bd_pins blk_mem_gen_0b/clka] [get_bd_pins blk_mem_gen_0b/clkb] [get_bd_pins blk_mem_gen_10a/clka] [get_bd_pins blk_mem_gen_10a/clkb] [get_bd_pins blk_mem_gen_10b/clka] [get_bd_pins blk_mem_gen_10b/clkb] [get_bd_pins blk_mem_gen_11a/clka] [get_bd_pins blk_mem_gen_11a/clkb] [get_bd_pins blk_mem_gen_11b/clka] [get_bd_pins blk_mem_gen_11b/clkb] [get_bd_pins blk_mem_gen_12a/clka] [get_bd_pins blk_mem_gen_12a/clkb] [get_bd_pins blk_mem_gen_12b/clka] [get_bd_pins blk_mem_gen_12b/clkb] [get_bd_pins blk_mem_gen_13a/clka] [get_bd_pins blk_mem_gen_13a/clkb] [get_bd_pins blk_mem_gen_13b/clka] [get_bd_pins blk_mem_gen_13b/clkb] [get_bd_pins blk_mem_gen_14a/clka] [get_bd_pins blk_mem_gen_14a/clkb] [get_bd_pins blk_mem_gen_14b/clka] [get_bd_pins blk_mem_gen_14b/clkb] [get_bd_pins blk_mem_gen_15a/clka] [get_bd_pins blk_mem_gen_15a/clkb] [get_bd_pins blk_mem_gen_15b/clka] [get_bd_pins blk_mem_gen_15b/clkb] [get_bd_pins blk_mem_gen_1a/clka] [get_bd_pins blk_mem_gen_1a/clkb] [get_bd_pins blk_mem_gen_1b/clka] [get_bd_pins blk_mem_gen_1b/clkb] [get_bd_pins blk_mem_gen_2a/clka] [get_bd_pins blk_mem_gen_2a/clkb] [get_bd_pins blk_mem_gen_2b/clka] [get_bd_pins blk_mem_gen_2b/clkb] [get_bd_pins blk_mem_gen_3a/clka] [get_bd_pins blk_mem_gen_3a/clkb] [get_bd_pins blk_mem_gen_3b/clka] [get_bd_pins blk_mem_gen_3b/clkb] [get_bd_pins blk_mem_gen_4a/clka] [get_bd_pins blk_mem_gen_4a/clkb] [get_bd_pins blk_mem_gen_4b/clka] [get_bd_pins blk_mem_gen_4b/clkb] [get_bd_pins blk_mem_gen_5a/clka] [get_bd_pins blk_mem_gen_5a/clkb] [get_bd_pins blk_mem_gen_5b/clka] [get_bd_pins blk_mem_gen_5b/clkb] [get_bd_pins blk_mem_gen_6a/clka] [get_bd_pins blk_mem_gen_6a/clkb] [get_bd_pins blk_mem_gen_6b/clka] [get_bd_pins blk_mem_gen_6b/clkb] [get_bd_pins blk_mem_gen_7a/clka] [get_bd_pins blk_mem_gen_7a/clkb] [get_bd_pins blk_mem_gen_7b/clka] [get_bd_pins blk_mem_gen_7b/clkb] [get_bd_pins blk_mem_gen_8a/clka] [get_bd_pins blk_mem_gen_8a/clkb] [get_bd_pins blk_mem_gen_8b/clka] [get_bd_pins blk_mem_gen_8b/clkb] [get_bd_pins blk_mem_gen_9a/clka] [get_bd_pins blk_mem_gen_9a/clkb] [get_bd_pins blk_mem_gen_9b/clka] [get_bd_pins blk_mem_gen_9b/clkb] [get_bd_pins bram_rd_0/clk] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins link10/clk_100M] [get_bd_pins link11/clk_100M] [get_bd_pins link12/clk_100M] [get_bd_pins link13/clk_100M] [get_bd_pins link14/clk_100M] [get_bd_pins link15/clk_100M] [get_bd_pins link16/clk_100M] [get_bd_pins link17/clk_100M] [get_bd_pins link18/clk_100M] [get_bd_pins link19/clk_100M] [get_bd_pins link20/clk_100M] [get_bd_pins link21/clk_100M] [get_bd_pins link22/clk_100M] [get_bd_pins link7/clk_100M] [get_bd_pins link8/clk_100M] [get_bd_pins link9/clk_100M] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins smartconnect_0/aclk] [get_bd_pins smartconnect_1/aclk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N1 [get_bd_pins link10/reset_n] [get_bd_pins link11/reset_n] [get_bd_pins link12/reset_n] [get_bd_pins link13/reset_n] [get_bd_pins link14/reset_n] [get_bd_pins link15/reset_n] [get_bd_pins link16/reset_n] [get_bd_pins link17/reset_n] [get_bd_pins link18/reset_n] [get_bd_pins link19/reset_n] [get_bd_pins link20/reset_n] [get_bd_pins link21/reset_n] [get_bd_pins link22/reset_n] [get_bd_pins link7/reset_n] [get_bd_pins link8/reset_n] [get_bd_pins link9/reset_n] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins blk_mem_gen_0a/web] [get_bd_pins blk_mem_gen_0b/web] [get_bd_pins blk_mem_gen_10a/web] [get_bd_pins blk_mem_gen_10b/web] [get_bd_pins blk_mem_gen_11a/web] [get_bd_pins blk_mem_gen_11b/web] [get_bd_pins blk_mem_gen_12a/web] [get_bd_pins blk_mem_gen_12b/web] [get_bd_pins blk_mem_gen_13a/web] [get_bd_pins blk_mem_gen_13b/web] [get_bd_pins blk_mem_gen_14a/web] [get_bd_pins blk_mem_gen_14b/web] [get_bd_pins blk_mem_gen_15a/web] [get_bd_pins blk_mem_gen_15b/web] [get_bd_pins blk_mem_gen_1a/web] [get_bd_pins blk_mem_gen_1b/web] [get_bd_pins blk_mem_gen_2a/web] [get_bd_pins blk_mem_gen_2b/web] [get_bd_pins blk_mem_gen_3a/web] [get_bd_pins blk_mem_gen_3b/web] [get_bd_pins blk_mem_gen_4a/web] [get_bd_pins blk_mem_gen_4b/web] [get_bd_pins blk_mem_gen_5a/web] [get_bd_pins blk_mem_gen_5b/web] [get_bd_pins blk_mem_gen_6a/web] [get_bd_pins blk_mem_gen_6b/web] [get_bd_pins blk_mem_gen_7a/web] [get_bd_pins blk_mem_gen_7b/web] [get_bd_pins blk_mem_gen_8a/web] [get_bd_pins blk_mem_gen_8b/web] [get_bd_pins blk_mem_gen_9a/web] [get_bd_pins blk_mem_gen_9b/web] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins blk_mem_gen_0a/wea] [get_bd_pins blk_mem_gen_0b/wea] [get_bd_pins blk_mem_gen_10a/wea] [get_bd_pins blk_mem_gen_10b/wea] [get_bd_pins blk_mem_gen_11a/wea] [get_bd_pins blk_mem_gen_11b/wea] [get_bd_pins blk_mem_gen_12a/wea] [get_bd_pins blk_mem_gen_12b/wea] [get_bd_pins blk_mem_gen_13a/wea] [get_bd_pins blk_mem_gen_13b/wea] [get_bd_pins blk_mem_gen_14a/wea] [get_bd_pins blk_mem_gen_14b/wea] [get_bd_pins blk_mem_gen_15a/wea] [get_bd_pins blk_mem_gen_15b/wea] [get_bd_pins blk_mem_gen_1a/wea] [get_bd_pins blk_mem_gen_1b/wea] [get_bd_pins blk_mem_gen_2a/wea] [get_bd_pins blk_mem_gen_2b/wea] [get_bd_pins blk_mem_gen_3a/wea] [get_bd_pins blk_mem_gen_3b/wea] [get_bd_pins blk_mem_gen_4a/wea] [get_bd_pins blk_mem_gen_4b/wea] [get_bd_pins blk_mem_gen_5a/wea] [get_bd_pins blk_mem_gen_5b/wea] [get_bd_pins blk_mem_gen_6a/wea] [get_bd_pins blk_mem_gen_6b/wea] [get_bd_pins blk_mem_gen_7a/wea] [get_bd_pins blk_mem_gen_7b/wea] [get_bd_pins blk_mem_gen_8a/wea] [get_bd_pins blk_mem_gen_8b/wea] [get_bd_pins blk_mem_gen_9a/wea] [get_bd_pins blk_mem_gen_9b/wea] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins link10/link] [get_bd_pins link11/link] [get_bd_pins link12/link] [get_bd_pins link13/link] [get_bd_pins link14/link] [get_bd_pins link15/link] [get_bd_pins link16/link] [get_bd_pins link17/link] [get_bd_pins link18/link] [get_bd_pins link19/link] [get_bd_pins link20/link] [get_bd_pins link21/link] [get_bd_pins link22/link] [get_bd_pins link7/link] [get_bd_pins link8/link] [get_bd_pins link9/link] [get_bd_pins xlconstant_2/dout]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x00010000 -offset 0x40400000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


