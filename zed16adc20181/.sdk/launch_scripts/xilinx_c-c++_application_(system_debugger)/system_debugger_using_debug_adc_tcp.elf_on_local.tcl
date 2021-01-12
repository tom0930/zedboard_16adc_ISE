connect -url tcp:127.0.0.1:3121
source D:/project/zedboard_16adc/zedboard_16adc_1229_FixValue/zedboard_16adc/zed16adc20181/TCP/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248471303"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248471303" && level==0} -index 1
fpga -file D:/project/zedboard_16adc/zedboard_16adc_1229_FixValue/zedboard_16adc/zed16adc20181/TCP/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248471303"} -index 0
loadhw -hw D:/project/zedboard_16adc/zedboard_16adc_1229_FixValue/zedboard_16adc/zed16adc20181/TCP/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248471303"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248471303"} -index 0
dow D:/project/zedboard_16adc/zedboard_16adc_1229_FixValue/zedboard_16adc/zed16adc20181/ADC_TCP/Debug/ADC_TCP.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248471303"} -index 0
con
