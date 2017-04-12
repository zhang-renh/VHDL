﻿library ieee;

entity pulse_gen_tb is
end pulse_gen_tb;

architecture pulse_gen_tb_arc of pulse_gen_tb is
	component pulse_gen is
	port
	(
		clk_in		:in 	std_logic;
		rst_in		:in 	std_logic;
		pulse_out	:out 	std_logic;
	);
	end component pulse_gen;
	
	signal clk_in 	:	std_logic;
	signal rst_in	: 	std_logic;
	signal pulse_out:	std_logic;
begin
	U: pulse_gen port map(clk_in, rst_in, pulse_out);
	process(clk_in)
	begin
		clk_in <= not clk_in after 50 ns;
	end process;
	rst_in 	<= 	'0',
				'1' after 200 ns,
				'0' after 210 ns;
end