library ieee;
use ieee.std_logic_1164.all;

entity xor is
	port(
		xor_in1 : in std_ulogic;
		xor_in2 : in  std_ulogic;
		xor_out : out std_ulogic
	);
end xor;

architecture rtl of xor is
begin
	xor_out <= xor_in1 xor xor_in2;
end rtl;

