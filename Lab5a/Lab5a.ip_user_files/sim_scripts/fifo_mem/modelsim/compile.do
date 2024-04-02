vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/fifo_generator_v13_2_9
vlib modelsim_lib/msim/xil_defaultlib

vmap fifo_generator_v13_2_9 modelsim_lib/msim/fifo_generator_v13_2_9
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work fifo_generator_v13_2_9  -incr -mfcu  \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9  -93  \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../Lab5a.gen/sources_1/ip/fifo_mem/sim/fifo_mem.v" \


vlog -work xil_defaultlib \
"glbl.v"
