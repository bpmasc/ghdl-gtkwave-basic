
ghdl -s xor.vhd xor_tb.vhd
ghdl -a xor.vhd xor_tb.vhd
ghdl -e xor_tb
ghdl -r xor_tb --stop-time=5000ns --vcd=xor_tb.vcd

gtkwave xor_tb.vcd