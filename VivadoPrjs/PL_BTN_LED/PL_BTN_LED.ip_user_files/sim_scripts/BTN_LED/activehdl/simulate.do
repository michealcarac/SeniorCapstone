onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+BTN_LED -L xilinx_vip -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BTN_LED xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {BTN_LED.udo}

run -all

endsim

quit -force
