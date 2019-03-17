
ghdl -s xor.vhd xor_tb.vhd
ghdl -a xor.vhd xor_tb.vhd
ghdl -e ha_tb
ghdl -r ha_tb --stop-time=5000ns --vcd=xor_tb.vcd

gtkwave xor_tb.vcd