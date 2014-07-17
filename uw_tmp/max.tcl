if { ![project_exists {max}] } {
     project_new {max}
} else {
     project_open {max}
}
set_project_settings -cmp {max}
if { ![project_settings_exist -sim max] } {
        set_project_settings -sim max
}
set_global_assignment -section_id {max} -name {EDA_DESIGN_ENTRY_SYNTHESIS_TOOL} {PRECISION SYNTHESIS}
set_global_assignment -section_id {max} -name {EDA_SIMULATION_TOOL} {MODELSIM (VHDL OUTPUT FROM QUARTUS II)}
set_global_assignment -name {EDIF_FILE} {max.edf}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_USE_LMF} {mentor.lmf}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_INPUT_GND_NAME} {GND}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_INPUT_VCC_NAME} {VCC}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_SHOW_LMF_MAPPING_MESSAGES} {OFF}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_RUN_TOOL_AUTOMATICALLY} {OFF}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_INPUT_DATA_FORMAT} {EDIF}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_OUTPUT_DATA_FORMAT} {EDIF}
set_global_assignment -section_id {eda_simulation} -name {EDA_FLATTEN_BUSES} {OFF}
set_global_assignment -section_id {eda_timing_analysis} -name {EDA_FLATTEN_BUSES} {OFF}
set_global_assignment -section_id {max} -name {DEVICE} {EP2S15F484C5}
set_global_assignment -name {FAMILY} {STRATIX II}
set_global_assignment -name {PROJECT_SHOW_ENTITY_NAME} {OFF}
if { [file exists {max_pnr_constraints.tcl}] } {
  source max_pnr_constraints.tcl
}
export_assignment_files
package require ::quartus::flow
if { [catch {execute_module -tool map} result] } {
  puts "Error running quartus_map $result"
} elseif { [catch {execute_module -tool fit} result] } {
  puts "Error running quartus_fit $result"
} elseif { [catch {execute_module -tool tan} result] } {
  puts "Error running quartus_tan $result"
} elseif { [catch {execute_module -tool asm} result] } {
  puts "Error running quartus_asm $result"
} elseif { [catch {execute_module -tool eda} result] } {
  puts "Error running quartus_eda $result"
}
project_close
