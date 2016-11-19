quietly set ACTELLIBNAME IGLOO
quietly set PROJECT_DIR "Z:/fpga_vision/fs_backscatter"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap igloo "C:/Microsemi/Libero_v11.5/Designer/lib/modelsim/precompiled/vlog/igloo"

vlog  -work postsynth "${PROJECT_DIR}/synthesis/top.v"
vlog "+incdir+${PROJECT_DIR}/stimulus"  -work postsynth "${PROJECT_DIR}/stimulus/top_tb.v"

vsim -L IGLOO -L postsynth  -t 1ps postsynth.top_tb
add wave /top_tb/*
add log -r /*
run 10us
