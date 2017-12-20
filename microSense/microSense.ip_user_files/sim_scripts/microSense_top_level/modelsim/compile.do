vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/axi_uartlite_v2_0_18
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_16
vlib modelsim_lib/msim/microblaze_v10_0_4
vlib modelsim_lib/msim/mdm_v3_2_11
vlib modelsim_lib/msim/proc_sys_reset_v5_0_12
vlib modelsim_lib/msim/lmb_v10_v3_0_9
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_13

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap axi_uartlite_v2_0_18 modelsim_lib/msim/axi_uartlite_v2_0_18
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_16 modelsim_lib/msim/axi_gpio_v2_0_16
vmap microblaze_v10_0_4 modelsim_lib/msim/microblaze_v10_0_4
vmap mdm_v3_2_11 modelsim_lib/msim/mdm_v3_2_11
vmap proc_sys_reset_v5_0_12 modelsim_lib/msim/proc_sys_reset_v5_0_12
vmap lmb_v10_v3_0_9 modelsim_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_13 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_13

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/5123" "+incdir+../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/ec67/hdl" "+incdir+../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/5123" "+incdir+../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/microSense_top_level/ip/microSense_top_level_clk_wiz_0_0/microSense_top_level_clk_wiz_0_0_sim_netlist.vhdl" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_18 -64 -93 \
"../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/a8a5/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/microSense_top_level/ip/microSense_top_level_axi_uartlite_0_0/sim/microSense_top_level_axi_uartlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_16 -64 -93 \
"../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/e9c1/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/microSense_top_level/ip/microSense_top_level_axi_gpio_0_0/sim/microSense_top_level_axi_gpio_0_0.vhd" \
"../../../bd/microSense_top_level/ip/microSense_top_level_axi_gpio_1_0/sim/microSense_top_level_axi_gpio_1_0.vhd" \
"../../../bd/microSense_top_level/ip/microSense_top_level_axi_gpio_2_0/sim/microSense_top_level_axi_gpio_2_0.vhd" \
"../../../bd/microSense_top_level/ip/microSense_top_level_vga_module_0_0/microSense_top_level_vga_module_0_0_sim_netlist.vhdl" \

vcom -work microblaze_v10_0_4 -64 -93 \
"../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/5eb2/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/microSense_top_level/ip/microSense_top_level_microblaze_0_0/sim/microSense_top_level_microblaze_0_0.vhd" \

vcom -work mdm_v3_2_11 -64 -93 \
"../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/aa5e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/microSense_top_level/ip/microSense_top_level_mdm_1_0/sim/microSense_top_level_mdm_1_0.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/microSense_top_level/ip/microSense_top_level_rst_clk_wiz_0_100M_0/sim/microSense_top_level_rst_clk_wiz_0_100M_0.vhd" \
"../../../bd/microSense_top_level/ip/microSense_top_level_xbar_0/microSense_top_level_xbar_0_sim_netlist.vhdl" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/microSense_top_level/ip/microSense_top_level_dlmb_v10_0/sim/microSense_top_level_dlmb_v10_0.vhd" \
"../../../bd/microSense_top_level/ip/microSense_top_level_ilmb_v10_0/sim/microSense_top_level_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_13 -64 -93 \
"../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/0739/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/microSense_top_level/ip/microSense_top_level_dlmb_bram_if_cntlr_0/sim/microSense_top_level_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/microSense_top_level/ip/microSense_top_level_ilmb_bram_if_cntlr_0/sim/microSense_top_level_ilmb_bram_if_cntlr_0.vhd" \
"../../../bd/microSense_top_level/ip/microSense_top_level_lmb_bram_0/microSense_top_level_lmb_bram_0_sim_netlist.vhdl" \
"../../../bd/microSense_top_level/sim/microSense_top_level.vhd" \
"c:/Users/Aklas/Desktop/microSense_topLevel/microSense/microSense.srcs/sources_1/bd/microSense_top_level/ip/microSense_top_level_top_level_SAR_0_0/microSense_top_level_top_level_SAR_0_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib \
"glbl.v"

