library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity computer is port(
	port_in_00, port_in_01, port_in_02	:	in std_logic_vector(7 downto 0);
	clock, reset	:	std_logic;
	port_out_00, port_out_01, port_out_02	:	out std_logic_vector(7 downto 0));
end entity;
	
architecture compuARch of computer is
	component cpu port(
		from_memory			:	in std_logic_vector(7 downto 0);
		clock, reset		:	in std_logic;
		
		to_memory, address	:	out std_logic_vector(7 downto 0);
		writen		:	out std_logic);
	end component;
	
	component memory port(
		address, data_in, port_in_00, 
		port_in_01, port_in_02						:	in std_logic_vector(7 downto 0);
		clock, writen, reset							:	in std_logic;
		
		data_out, port_out_00, 
		port_out_01, port_out_02					:	out std_logic_vector(7 downto 0));
	end component;
	
	signal from_memory, to_memory, address	:	std_logic_vector(7 downto 0);
	signal writen : std_logic;
begin
	U1: cpu port map(from_memory, clock, reset, to_memory, address, writen);
	U2: memory port map(address, to_memory, port_in_00, port_in_01, port_in_02, 
		 clock, writen, reset, from_memory, port_out_00, port_out_01, port_out_02);
end architecture;
