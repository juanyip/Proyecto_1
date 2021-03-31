library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cpu is port(
	from_memory			:	in std_logic_vector(7 downto 0);
	clock, reset		:	in std_logic;
	
	to_memory, address	:	out std_logic_vector(7 downto 0);
	writen		:	out std_logic);
end entity;

architecture cpu_Arch of cpu is
	component control_unit
	port(	IR	: in std_logic_vector(7 downto 0);
			CCR_Result	: in std_logic_vector(3 downto 0);
			clock, reset	: in std_logic;
			Bus1_Sel, Bus2_Sel	: out std_logic_vector(1 downto 0);
			ALU_Sel	: out std_logic_vector(2 downto 0);
			IR_Load, MAR_Load, PC_Load, PC_Inc,
			A_Load, B_Load, CCR_Load, writen: out std_logic);
	end component;
		
	component data_path
	port( from_memory		:	in std_logic_vector(7 downto 0);
			Bus1_Sel, Bus2_Sel	:	in std_logic_vector(1 downto 0);
			clock, reset, IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load, B_Load, CCR_Load:	in std_logic;
			ALU_Sel	: in std_logic_vector(2 downto 0);
			to_memory, address, IR		:	out std_logic_vector(7 downto 0);
			CCR_Result	: out std_logic_vector(3 downto 0));
	end component;
	
	signal IR : std_logic_vector(7 downto 0);
	signal IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load, B_Load, CCR_Load : std_logic;
	signal ALU_Sel : std_logic_vector(2 downto 0);
	signal CCR_Result : std_logic_vector(3 downto 0);
	signal Bus1_Sel, Bus2_Sel : std_logic_vector(1 downto 0);
begin
	U1	:	control_unit port map(IR, CCR_Result, clock, reset, Bus1_Sel, Bus2_Sel, ALU_Sel, IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load, B_Load, CCR_Load, writen);
	U2 :	data_path port map(from_memory, Bus1_Sel, Bus2_Sel, clock, reset, IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load, B_Load, CCR_Load, ALU_Sel, to_memory, address, IR, CCR_Result);
end architecture;