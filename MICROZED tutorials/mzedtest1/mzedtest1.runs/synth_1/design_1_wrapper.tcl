# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {C:/Users/Jose Idlabs/Documents/GitHub/WATCHMAN/MICROZED tutorials/mzedtest1/mzedtest1.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Jose Idlabs/Documents/GitHub/WATCHMAN/MICROZED tutorials/mzedtest1/mzedtest1.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:microzed_7010:part0:1.1 [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files {{C:/Users/Jose Idlabs/Documents/GitHub/WATCHMAN/MICROZED tutorials/mzedtest1/mzedtest1.srcs/sources_1/bd/design_1/design_1.bd}}
set_property used_in_implementation false [get_files -all {{c:/Users/Jose Idlabs/Documents/GitHub/WATCHMAN/MICROZED tutorials/mzedtest1/mzedtest1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc}}]
set_property used_in_implementation false [get_files -all {{C:/Users/Jose Idlabs/Documents/GitHub/WATCHMAN/MICROZED tutorials/mzedtest1/mzedtest1.srcs/sources_1/bd/design_1/design_1_ooc.xdc}}]
set_property is_locked true [get_files {{C:/Users/Jose Idlabs/Documents/GitHub/WATCHMAN/MICROZED tutorials/mzedtest1/mzedtest1.srcs/sources_1/bd/design_1/design_1.bd}}]

read_vhdl -library xil_defaultlib {{C:/Users/Jose Idlabs/Documents/GitHub/WATCHMAN/MICROZED tutorials/mzedtest1/mzedtest1.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.vhd}}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top design_1_wrapper -part xc7z010clg400-1
write_checkpoint -noxdef design_1_wrapper.dcp
catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }