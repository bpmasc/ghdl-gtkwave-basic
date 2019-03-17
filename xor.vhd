library ieee;
use ieee.std_logic_1164.all;

entity xor1 is
	port(
		xor_in1 : in std_ulogic;
		xor_in2 : in  std_ulogic;
		xor_out : out std_ulogic
	);
end xor1;

architecture rtl of xor1 is
begin
	xor_out <= xor_in1 xor xor_in2;
end rtl;

