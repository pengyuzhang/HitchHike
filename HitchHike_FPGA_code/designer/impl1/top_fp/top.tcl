open_project -project {Z:\fpga_vision\xorfi_demo\designer\impl1\top_fp\top.pro}
set_programming_action -action {PROGRAM}
catch {run_selected_actions} return_val
save_project
close_project
if { $return_val != 0 } {
  exit 1 }
