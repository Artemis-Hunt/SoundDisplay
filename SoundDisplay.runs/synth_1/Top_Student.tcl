# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.cache/wt [current_project]
set_property parent.project_path C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Audio_Capture.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/Oled_Display.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/bcd.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/char_disp.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/clk20k.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/colourHex_disp.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/coordinate_display.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_background.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_border.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_high.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_low.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_med.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/dictionary.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/draw_border.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/ledDriv.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/mux.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/single_dff.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/single_pulse.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/stopwatch.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/stopwatch_output.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/string_driver.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/text_select.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/xycalculator.v
  C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/constrs_1/new/Basys3_Master.xdc
set_property used_in_implementation false [get_files C:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/constrs_1/new/Basys3_Master.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top Top_Student -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Top_Student.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Top_Student_utilization_synth.rpt -pb Top_Student_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
