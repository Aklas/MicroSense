onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_uartlite_v2_0_18 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_16 -L microblaze_v10_0_4 -L mdm_v3_2_11 -L proc_sys_reset_v5_0_12 -L lmb_v10_v3_0_9 -L lmb_bram_if_cntlr_v4_0_13 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.microSense_top_level xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {microSense_top_level.udo}

run -all

quit -force
