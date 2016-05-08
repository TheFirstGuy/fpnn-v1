----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:36:26 05/07/2016 
-- Design Name: 
-- Module Name:    wrapper - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity wrapper is
	PORT(
		clk: IN STD_LOGIC;
		broadcast: IN STD_LOGIC;
		forward: IN STD_LOGIC;
		still_fwd: IN STD_LOGIC;
		backward: IN STD_LOGIC;
		update: IN STD_LOGIC;
		reset: IN STD_LOGIC;
		
		northIn: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
		eastIn: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
		westIn: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
		southIn: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
		
		output: OUT STD_LOGIC_VECTOR(19 DOWNTO 0 )

	);
end wrapper;

architecture Behavioral of wrapper is

component neuron is

generic (
	rand1: STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"08000";
	rand2: STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"08000";
	rand3: STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"08000";
	rand4: STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"08000"
	);
	
PORT(
	--Control
	clk: IN STD_LOGIC;
	broadcast: IN STD_LOGIC;
	forward: IN STD_LOGIC;
	still_fwd: IN STD_LOGIC;
	backward: IN STD_LOGIC;
	update: IN STD_LOGIC;
	reset: IN STD_LOGIC;
	--Input Link Connections
	--South
	south_fdata_in: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- Forward data
	sw_bdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0); -- backward data
	sa_bdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	se_bdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	sw_in_r, sa_in_r, se_in_r: IN STD_LOGIC; -- Forward signal and forward requests
	sw_out_r, sa_out_r, se_out_r: OUT STD_LOGIC; -- backward requests
	--East
	east_fdata_in: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	ew_bdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	ea_bdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	ea_in_r, ew_in_r: IN STD_LOGIC;
	ea_out_r, ew_out_r: OUT STD_LOGIC;
	--West
	west_fdata_in: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	we_bdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	wa_bdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	wa_in_r, we_in_r: IN STD_LOGIC;
	wa_out_r, we_out_r: OUT STD_LOGIC;
	--Output Link Connections
	--North
	north_fdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	north_bdata_in0: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	north_bdata_in1: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	north_bdata_in2: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	north_bdata_in3: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	north_r: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	north_br: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	--East
	east_fdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0); -- Forward data out of neuron
	east_bdata_in0: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- backward data into neuron
	east_bdata_in1: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- backward data into neuron
	east_bdata_in2: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- backward data into neuron
	east_bdata_in3: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- backward data into neuron
	east_r: OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- Output request signals
	east_br: IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- backward input request signals
	--West
	west_fdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	west_bdata_in0: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- backward data into neuron
	west_bdata_in1: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- backward data into neuron
	west_bdata_in2: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- backward data into neuron
	west_bdata_in3: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- backward data into neuron
	west_r: OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- Output request signals
	west_br: IN STD_LOGIC_VECTOR(3 DOWNTO 0) -- backward input request signals
);
end component;

SIGNAL ground: STD_LOGIC := '0';
begin

n : neuron
	PORT MAP(clk=>clk, broadcast=>broadcast, forward=>forward, still_fwd=>still_fwd,
		backward=>backward, update=>update, reset=>reset, south_fdata_in=>southIn, sw_bdata_out=>open, sa_bdata_out=>open, se_bdata_out=>open,
		sw_in_r=>ground, sa_in_r=>ground, se_in_r=>ground, sw_out_r=>open, sa_out_r=>open, se_out_r=>open,
		east_fdata_in=>eastIn, ew_bdata_out=>open, ea_bdata_out=>open, ea_in_r =>'1', ew_in_r=>'1',
		ea_out_r=>open, ew_out_r=>open, west_fdata_in=>westIn, we_bdata_out=>open, wa_bdata_out=>open,
		wa_in_r=>'1', we_in_r=>'1', wa_out_r=>open, we_out_r=>open,
		north_fdata_out=>output, north_bdata_in0=>X"00000", north_bdata_in1=>X"00000", north_bdata_in2=>X"00000", 
		north_bdata_in3=>X"00000", north_r=>open, north_br(0)=>'1', north_br(1)=>ground, north_br(2)=>ground, north_br(3)=>ground,
		east_fdata_out=>open, east_bdata_in0=>X"00000", east_bdata_in1=>X"00000", east_bdata_in2=>X"00000",
		east_bdata_in3=>X"00000", east_r=>open, east_br=>"0000",west_fdata_out=>open,
		west_bdata_in0=>X"00000", west_bdata_in1=>X"00000", west_bdata_in2=>X"00000", west_bdata_in3=>X"00000", west_r=>open,
		west_br=>"0000");


end Behavioral;

