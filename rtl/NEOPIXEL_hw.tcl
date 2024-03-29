# Copyright 2018 ARDUINO SA (http://www.arduino.cc/)
# This file is part of Vidor IP.
# Copyright (c) 2018
# Authors: Dario Pennisi
#
# This software is released under:
# The GNU General Public License, which covers the main part of
# Vidor IP
# The terms of this license can be found at:
# https://www.gnu.org/licenses/gpl-3.0.en.html
#
# You can be released from the requirements of the above licenses by purchasing
# a commercial license. Buying such a license is mandatory if you want to modify or
# otherwise use the software for commercial activities involving the Arduino
# software without disclosing the source code of your own applications. To purchase
# a commercial license, send an email to license@arduino.cc.

#
# request TCL package from ACDS 16.1
#
package require -exact qsys 16.1


#
# module NEOPIXEL
#
set_module_property DESCRIPTION ""
set_module_property NAME NEOPIXEL
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP ipTronix
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "NeoPixel driver"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false
set_module_property ELABORATION_CALLBACK            elaboration_callback


#
# file sets
#
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL NEOPIXEL
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file NEOPIXEL.sv SYSTEM_VERILOG PATH NEOPIXEL.sv TOP_LEVEL_FILE


#
# parameters
#
add_parameter pCHANNELS INTEGER 23
set_parameter_property pCHANNELS DEFAULT_VALUE 23
set_parameter_property pCHANNELS DISPLAY_NAME "Number of strings"
set_parameter_property pCHANNELS TYPE INTEGER
set_parameter_property pCHANNELS UNITS None
set_parameter_property pCHANNELS HDL_PARAMETER true

add_parameter pSTART_ADDRESS INTEGER 0
set_parameter_property pSTART_ADDRESS DEFAULT_VALUE 0
set_parameter_property pSTART_ADDRESS DISPLAY_NAME "Memory buffer start address"
set_parameter_property pSTART_ADDRESS TYPE INTEGER
set_parameter_property pSTART_ADDRESS UNITS None
set_parameter_property pSTART_ADDRESS HDL_PARAMETER true

#
# display items
#


#
# connection point avalon_slave
#
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock clk
set_interface_property avalon_slave associatedReset reset
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits WORDS
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave maximumPendingWriteTransactions 0
set_interface_property avalon_slave readLatency 1
set_interface_property avalon_slave readWaitTime 0
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave oCSR_READ_DATA readdata Output 32
add_interface_port avalon_slave iCSR_WRITE_DATA writedata Input 32
add_interface_port avalon_slave iCSR_ADDRESS address Input 4
add_interface_port avalon_slave iCSR_READ read Input 1
add_interface_port avalon_slave iCSR_WRITE write Input 1
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0


#
# connection point clk
#
add_interface clk clock end
set_interface_property clk clockRate 0
set_interface_property clk ENABLED true
set_interface_property clk EXPORT_OF ""
set_interface_property clk PORT_NAME_MAP ""
set_interface_property clk CMSIS_SVD_VARIABLES ""
set_interface_property clk SVD_ADDRESS_GROUP ""

add_interface_port clk iCLOCK clk Input 1


#
# connection point reset
#
add_interface reset reset end
set_interface_property reset associatedClock clk
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset iRESET reset Input 1


#
# connection point pixel
#
add_interface pixel conduit end
set_interface_property pixel associatedClock clk
set_interface_property pixel associatedReset ""
set_interface_property pixel ENABLED true
set_interface_property pixel EXPORT_OF ""
set_interface_property pixel PORT_NAME_MAP ""
set_interface_property pixel CMSIS_SVD_VARIABLES ""
set_interface_property pixel SVD_ADDRESS_GROUP ""

#
# connection point data
#
add_interface data avalon start
set_interface_property data addressUnits SYMBOLS
set_interface_property data associatedClock clk
set_interface_property data associatedReset reset
set_interface_property data bitsPerSymbol 8
set_interface_property data burstOnBurstBoundariesOnly false
set_interface_property data burstcountUnits WORDS
set_interface_property data holdTime 0
set_interface_property data linewrapBursts false
set_interface_property data maximumPendingReadTransactions 0
set_interface_property data maximumPendingWriteTransactions 0
set_interface_property data readLatency 0
set_interface_property data readWaitTime 0
set_interface_property data setupTime 0
set_interface_property data timingUnits Cycles
set_interface_property data writeWaitTime 0
set_interface_property data ENABLED true
set_interface_property data EXPORT_OF ""
set_interface_property data PORT_NAME_MAP ""
set_interface_property data CMSIS_SVD_VARIABLES ""
set_interface_property data SVD_ADDRESS_GROUP ""

add_interface_port data oDATA_ADDRESS address Output 32
add_interface_port data oDATA_READ    read    Output 1
add_interface_port data iDATA_WAIT_REQUEST    waitrequest    Input 1
add_interface_port data oDATA_BURST_COUNT    burstcount    Output 5
add_interface_port data iDATA_READ_DATA    readdata    Input 32
add_interface_port data iDATA_READ_DATA_VALID    readdatavalid    Input 1

#
# connection point irq
#
add_interface irq interrupt end
set_interface_property irq associatedAddressablePoint "avalon_slave"
set_interface_property irq associatedClock clk
set_interface_property irq bridgedReceiverOffset ""
set_interface_property irq bridgesToReceiver ""
set_interface_property irq ENABLED true
set_interface_property irq EXPORT_OF ""
set_interface_property irq PORT_NAME_MAP ""
set_interface_property irq CMSIS_SVD_VARIABLES ""
set_interface_property irq SVD_ADDRESS_GROUP ""

add_interface_port irq oIRQ irq Output 1

# -----------------------------------------------------------------------------
proc log2 {value} {
  set value [expr $value-1]
  for {set log2 0} {$value>0} {incr log2} {
     set value  [expr $value>>1]
  }
  return $log2;
}

# -----------------------------------------------------------------------------
# callbacks
# -----------------------------------------------------------------------------
proc elaboration_callback {} {
  set channels [expr { 1+ [get_parameter_value pCHANNELS] } ]
  add_interface_port pixel oDATA data Output $channels
  add_interface_port pixel oCLK clk Output 1
  set_module_assignment embeddedsw.CMacro.CHANNELS [get_parameter_value pCHANNELS]u
}
