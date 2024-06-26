vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_0
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_20
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_uartlite_v2_0_22
vlib activehdl/lmb_v10_v3_0_9
vlib activehdl/lmb_bram_if_cntlr_v4_0_15
vlib activehdl/blk_mem_gen_v8_4_2
vlib activehdl/mdm_v3_2_15
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_18
vlib activehdl/fifo_generator_v13_2_3
vlib activehdl/axi_data_fifo_v2_1_17
vlib activehdl/axi_crossbar_v2_1_19
vlib activehdl/axi_timer_v2_0_20

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap microblaze_v11_0_0 activehdl/microblaze_v11_0_0
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 activehdl/axi_gpio_v2_0_20
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_22 activehdl/axi_uartlite_v2_0_22
vmap lmb_v10_v3_0_9 activehdl/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 activehdl/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 activehdl/blk_mem_gen_v8_4_2
vmap mdm_v3_2_15 activehdl/mdm_v3_2_15
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 activehdl/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 activehdl/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 activehdl/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 activehdl/axi_crossbar_v2_1_19
vmap axi_timer_v2_0_20 activehdl/axi_timer_v2_0_20

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/85a3" "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl" \
"/mnt/linux2/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/mnt/linux2/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/mnt/linux2/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_0 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ms_system/ip/ms_system_microblaze_0_0/sim/ms_system_microblaze_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ms_system/ip/ms_system_axi_gpio_0_0/sim/ms_system_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/85a3" "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl" \
"../../../bd/ms_system/ip/ms_system_clk_wiz_0_0/ms_system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/ms_system/ip/ms_system_clk_wiz_0_0/ms_system_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/ms_system/ip/ms_system_axi_gpio_1_0/sim/ms_system_axi_gpio_1_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_22 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ms_system/ip/ms_system_axi_uartlite_0_0/sim/ms_system_axi_uartlite_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ms_system/ip/ms_system_dlmb_v10_0/sim/ms_system_dlmb_v10_0.vhd" \
"../../../bd/ms_system/ip/ms_system_ilmb_v10_0/sim/ms_system_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ms_system/ip/ms_system_dlmb_bram_if_cntlr_0/sim/ms_system_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/ms_system/ip/ms_system_ilmb_bram_if_cntlr_0/sim/ms_system_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/85a3" "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl" \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/85a3" "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl" \
"../../../bd/ms_system/ip/ms_system_lmb_bram_0/sim/ms_system_lmb_bram_0.v" \

vcom -work mdm_v3_2_15 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ms_system/ip/ms_system_mdm_1_0/sim/ms_system_mdm_1_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ms_system/ip/ms_system_rst_clk_wiz_0_100M_0/sim/ms_system_rst_clk_wiz_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/85a3" "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl" \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/85a3" "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl" \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/85a3" "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl" \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/85a3" "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl" \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/85a3" "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl" \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/85a3" "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl" \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/85a3" "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl" \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/85a3" "+incdir+../../../../7.srcs/sources_1/bd/ms_system/ipshared/ec67/hdl" \
"../../../bd/ms_system/ip/ms_system_xbar_0/sim/ms_system_xbar_0.v" \

vcom -work axi_timer_v2_0_20 -93 \
"../../../../7.srcs/sources_1/bd/ms_system/ipshared/e9c1/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ms_system/ip/ms_system_axi_timer_0_0/sim/ms_system_axi_timer_0_0.vhd" \
"../../../bd/ms_system/sim/ms_system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

