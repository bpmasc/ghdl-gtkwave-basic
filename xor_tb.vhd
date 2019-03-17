--! Standard signal package
library ieee;
use ieee.std_logic_1164.all;

entity xor_tb is
end xor_tb; 

--! @brief 
architecture test of xor_tb is

	component xor
		port
		(
			xor_in1 : in std_ulogic;
			xor_in2 : in  std_ulogic;
			xor_out : out std_ulogic
		);
	end component;

	--! Signals declaration
	signal xor_in1 : std_ulogic;
	signal xor_in2 : std_ulogic;
	signal xor_out : std_ulogic;

begin
	--! galf adder instatiation
	inst_xor_logic : xor port map (xor_in1=>xor_in1,xor_in2=>xor_in2,xor_out=>xor_out);

	process begin


		xor_in1 <= 'X';
		xor_in2 <= 'X';
		wait for 1 ns;

		xor_in1<='0';
		xor_in2<='0';
		wait for 1 ns;

		xor_in1<='0';
		xor_in2<='1';
		wait for 1 ns;

		xor_in1<='1';
		xor_in2<='0';
		wait for 1 ns;

		xor_in1<='1';
		xor_in2<='1';
		wait for 1 ns;

		assert false report "Reached end of test";
		wait;

	end process;

end test;