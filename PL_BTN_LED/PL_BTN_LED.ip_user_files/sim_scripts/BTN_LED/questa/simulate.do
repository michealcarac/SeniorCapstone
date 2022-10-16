onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib BTN_LED_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {BTN_LED.udo}

run -all

quit -force
