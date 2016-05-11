----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:01:29 05/09/2016 
-- Design Name: 
-- Module Name:    brick_4 - Behavioral 
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

entity brick_4 is
GENERIC( 
	--Random
	rand1  : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"08123";
	rand2  : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"F8000";
	rand3  : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"07210";
	rand4  : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"032F2";
	rand5  : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"0AB32";
	rand6  : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"083C3";
	rand7  : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"FF293";
	rand8  : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"F2332";
	rand9  : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"02934";
	rand10 : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"0F323";
	rand11 : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"F1009";
	rand12 : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"F1244";
	rand13 : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"F132d";
	rand14 : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"08123";
	--rand15 : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"F8000";
	--rand16 : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"07210";

	side_rn_sc: STD_LOGIC_VECTOR( 3 DOWNTO 0 ) := X"3";
	-- Input rp_pred
	n1_in: STD_LOGIC_VECTOR( 3 DOWNTO 0 ) := X"7";
	n2_in: STD_LOGIC_VECTOR( 3 DOWNTO 0 ) := X"7";
	n3_in: STD_LOGIC_VECTOR( 3 DOWNTO 0 ) := X"7";
	n4_in: STD_LOGIC_VECTOR( 3 DOWNTO 0 ) := X"7";
	
	-- Out Sn_succ
	n1_out: STD_LOGIC_VECTOR( 3 DOWNTO 0 ) := X"7";
	n2_out: STD_LOGIC_VECTOR( 3 DOWNTO 0 ) := X"7";
	n3_out: STD_LOGIC_VECTOR( 3 DOWNTO 0 ) := X"7";
	n4_out: STD_LOGIC_VECTOR( 3 DOWNTO 0 ) := X"7"
	);
PORT(
	clk: IN STD_LOGIC;
	forward: IN STD_LOGIC;
	still_fwd: IN STD_LOGIC;
	backward: IN STD_LOGIC;
	update: IN STD_LOGIC;
	reset: IN STD_LOGIC;
	
	-- South IO
	in1_r: IN STD_LOGIC_VECTOR(1 DOWNTO 0);-- Corner
	in2_r: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	in3_r: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	in4_r: IN STD_LOGIC_VECTOR(1 DOWNTO 0);--Corner
	
	in1_fdata: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	in2_fdata: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	in3_fdata: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	in4_fdata: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	
	n1_in1_br: OUT STD_LOGIC_VECTOR( 1 DOWNTO 0 );--Corner
	n2_in2_br: OUT STD_LOGIC_VECTOR( 2 DOWNTO 0 );
	n3_in3_br: OUT STD_LOGIC_VECTOR( 2 DOWNTO 0 );
	n4_in4_br: OUT STD_LOGIC_VECTOR( 1 DOWNTO 0 );--Corner
	
	n1_in1_bdata: OUT STD_LOGIC_VECTOR(39 DOWNTO 0);--Corner
	n2_in2_bdata: OUT STD_LOGIC_VECTOR(59 DOWNTO 0);
	n3_in3_bdata: OUT STD_LOGIC_VECTOR(59 DOWNTO 0);
	n4_in4_bdata: OUT STD_LOGIC_VECTOR(39 DOWNTO 0);--Corner
	
	-- North IO
	n1_r: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	n2_r: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	n3_r: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	n4_r: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	n1_fdata: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	n2_fdata: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	n3_fdata: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	n4_fdata: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	
	n1_o_br: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	n2_o_br: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	n3_o_br: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	n4_o_br: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	n1_bdata: IN STD_LOGIC_VECTOR(59 DOWNTO 0);
	n2_bdata: IN STD_LOGIC_VECTOR(59 DOWNTO 0);
	n3_bdata: IN STD_LOGIC_VECTOR(59 DOWNTO 0);
	n4_bdata: IN STD_LOGIC_VECTOR(59 DOWNTO 0)
	
);
end brick_4;

architecture Behavioral of brick_4 is

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

component corner_neuron is
generic (
	rand1: STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"08000";
	rand2: STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"08000";
	rand3: STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"08000"
	);
PORT(
	--Control
	clk: IN STD_LOGIC;
	broadcast: IN STD_LOGIC;
	forward: IN STD_LOGIC;
	still_fwd: IN STD_LOGIC;
	update: IN STD_LOGIC;
	reset: IN STD_LOGIC;
	--Input Link Connections
	--South
	south_fdata_in: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- Forward data
	sw_bdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0); -- backward data
	sa_bdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	sw_in_r, sa_in_r: IN STD_LOGIC; -- Forward signal and forward requests
	sw_out_r, sa_out_r: OUT STD_LOGIC; -- backward requests
	--East
	east_fdata_in: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	ew_bdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	ea_bdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	ea_in_r, ew_in_r: IN STD_LOGIC;
	ea_out_r, ew_out_r: OUT STD_LOGIC;
	--West
	west_fdata_in: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	wa_bdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	wa_in_r: IN STD_LOGIC;
	wa_out_r: OUT STD_LOGIC;
	--Output Link Connections
	--North
	north_fdata_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	north_bdata_in0: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	north_bdata_in1: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	north_bdata_in2: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	north_bdata_in3: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	north_r: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	north_br: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
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

--Sideways forward request Signals
SIGNAL n1_n2_fr, n2_n1_fr, n2_n3_fr, n3_n2_fr, n3_n4_fr, n4_n3_fr: STD_LOGIC(3 DOWNTO 0 );
-- Sideways backward request Signals
SIGNAL n2_n1_br, n1_n2_br, n2_n3_br, n3_n2_br, n3_n4_br, n4_n3_br: STD_LOGIC(3 DOWNTO 0 );
--Sideways fdata
SIGNAL n1_n2_fd, n2_n1_fd, n2_n3_fd, n3_n2_fd, n3_n4_fd, n4_n3_fd: STD_LOGIC(19 DOWNTO 0 );
--Sideways bdata
SIGNAL n1_n2_bd, n2_n1_bd, n2_n3_bd, n3_n2_bd, n3_n4_bd, n4_n3_bd: STD_LOGIC(39 DOWNTO 0 );

begin

Node1: corner_neuron
GENERIC MAP (rand1 => rand1,rand2 => rand2,rand3 => rand3)
	PORT MAP( clk=>clk, forward=>forward, still_fwd=>still_fwd, backward=>backward, update=>update, reset=>reset, 
		south_fdata_in=>in1_fdata, sw_bdata_out=>n1_in1_bdata(39 DOWNTO 20), sa_bdata_out=>n1_in1_bdata(19 DOWNTO 0), 
		sw_in_r=>in1_r(0), sa_in_r=>in1_r(1), sw_out_r=>n1_in1_br(0), sa_out_r=>n1_in1_br(1),
		east_fdata_in=>X"00000", ew_bdata_out=>open, ea_bdata_out=>open, ea_in_r=>'0', ew_in_r=>'0', ea_out_r=>open,
		ew_out_r=>open, west_fdata_in=>n2_n1_fd, wa_bdata_out=>n1_n2_bd(39 DOWNTO 19), wa_in_r=>n2_n1_r(0), wa_out_r=>n1_n2_br(0), 
		north_fdata_out=>n1_fdata, north_bdata_in0=>n1_bdata(59 DOWNTO 40), north_bdata_in1=n1_bdata(39 DOWNTO 20), 
		north_bdata_in2=>n1_bdata(19 DOWNTO 0), north_bdata_in3=>X"00000", north_r=>n1_r, north_br=>n1_o_br, 
		west_fdata_out=>n1_n2_fd, west_bdata_in0=>n2_n1_bd(39 DOWNTO 20), west_bdata_in1=>n2_n1_bd(19 DOWNTO 0), 
		west_bdata_in2=>X"00000", west_bdata_in3=>X"00000", west_r=>n1_n2_fr, west_br=>n2_n1_br);

Node2: neuron
GENERIC MAP (rand1 => rand4,rand2 => rand5,rand3 => rand6, rand4=>rand7)
	PORT MAP( clk=>clk, forward=>forward, still_fwd=>still_fwd, backward=>backward, update=>update, reset=>reset,
	south_fdata_in=>in2_fdata, sw_bdata_out=>n2_in2_bdata(59 DOWNTO 40), sa_bdata_out=>n2_in2_bdata(39 DOWNTO 20),
	se_bdata_out=>n2_in2_bdata(19 DOWNTO 0), sw_in_r=>in2_r(0), sa_in_r=>in2_r(1), se_in_r=>in2_r(2), sw_out_r=>n2_in2_br(0),
	sa_out_r=>n2_in2_br(1), se_out_r=>n2_in2_br(2), east_fdata_in=>n3_n2_fd, ew_bdata_out=>n2_n3_bd(39 DOWNTO 20), 
	ea_bdata_out=>n2_n3_bd(19 DOWNTO 0), ew_in_r=>n3_n2_r(0), ea_in_r=>n3_n2_fr(1), ew_out_r=>n2_n3_fr(0), ea_out_r=>n2_n3_fr(1),
	west_fdata_in=>n1_n2_fd,we_bdata_out=>n2_n1_bd(39 DOWNTO 20), wa_bdata_out=>n2_n1_bd(19 DOWNTO 0), 
	wa_in_r=>n1_n2_fr(0), we_in_r=>n1_n2_fr(1), wa_out_r=>n2_n1_br(0), we_out_r=>n2_n1_br(1), north_fdata_out=>n2_out, 
	north_bdata_in0=>n2_bdata(59 DOWNTO 40), north_bdata_in1=>n2_bdata(39 DOWNTO 20), north_bdata_in2=>n2_bdata(19 DOWNTO 0), north_bdata_in3=>X"00000", 
	north_r=>n2_r, north_br=>n2_o_br, east_fdata_out=>n2_n3_fd, east_bdata_in0=>n3_n2_bd(39 DOWNTO 20), east_bdata_in1=>n3_n2_bd(19 DOWNTO 0),
	east_bdata_in2=>X"00000", east_bdata_in3=>X"00000", east_r=>n2_n3_fr, east_br=>n3_n2_br, west_fdata_out=>n2_n1_fd,
	west_bdata_in0=>n1_n2_bd(39 DOWNTO 20), west_bdata_in1=>n1_n2_bd(19 DOWNTO 0), west_bdata_in2=>X"00000", west_bdata_in3=>X"00000",
	west_r=>n2_n1_fr, west_br=>n1_n2_br); 
	
Node3: neuron
GENERIC MAP (rand1 => rand8,rand2 => rand9,rand3 => rand10, rand4=>rand11)
	PORT MAP( clk=>clk, forward=>forward, still_fwd=>still_fwd, backward=>backward, update=>update, reset=>reset,
	south_fdata_in=>in3_fdata, sw_bdata_out=>n3_in3_bdata(59 DOWNTO 40), sa_bdata_out=>n3_in3_bdata(39 DOWNTO 20),
	se_bdata_out=>n3_in3_bdata(19 DOWNTO 0), sw_in_r=>in3_r(0), sa_in_r=>in3_r(1), se_in_r=>in3_r(2), sw_out_r=>n3_in3_br(0),
	sa_out_r=>n3_in3_br(1), se_out_r=>n3_in3_br(2), east_fdata_in=>n4_n3_fd, ew_bdata_out=>n3_n4_bd(39 DOWNTO 20), 
	ea_bdata_out=>n3_n4_bd(19 DOWNTO 0), ew_in_r=>n4_n3_r(0), ea_in_r=>n4_n3_fr(1), ew_out_r=>n3_n4_fr(0), ea_out_r=>n3_n4_fr(1),
	west_fdata_in=>n2_n3_fd,we_bdata_out=>n3_n2_bd(39 DOWNTO 20), wa_bdata_out=>n3_n2_bd(19 DOWNTO 0), 
	wa_in_r=>n2_n3_fr(0), we_in_r=>n2_n3_fr(1), wa_out_r=>n3_n2_br(0), we_out_r=>n3_n2_br(1), north_fdata_out=>n3_out, 
	north_bdata_in0=>n3_bdata(59 DOWNTO 40), north_bdata_in1=>n3_bdata(39 DOWNTO 20), north_bdata_in2=>n3_bdata(19 DOWNTO 0), north_bdata_in3=>X"00000", 
	north_r=>n3_r, north_br=>n3_o_br, east_fdata_out=>n3_n4_fd, east_bdata_in0=>n4_n3_bd(39 DOWNTO 20), east_bdata_in1=>n4_n3_bd(19 DOWNTO 0),
	east_bdata_in2=>X"00000", east_bdata_in3=>X"00000", east_r=>n3_n4_fr, east_br=>n4_n3_br, west_fdata_out=>n3_n2_fd,
	west_bdata_in0=>n2_n3_bd(39 DOWNTO 20), west_bdata_in1=>n2_n3_bd(19 DOWNTO 0), west_bdata_in2=>X"00000", west_bdata_in3=>X"00000",
	west_r=>n3_n2_fr, west_br=>n2_n3_br); 

Node4: corner_neuron
GENERIC MAP (rand1 => rand12,rand2 => rand13,rand3 => rand14)
	PORT MAP( clk=>clk, forward=>forward, still_fwd=>still_fwd, backward=>backward, update=>update, reset=>reset, 
		south_fdata_in=>in4_fdata, sw_bdata_out=>n4_in4_bdata(39 DOWNTO 20), sa_bdata_out=>n4_in4_bdata(19 DOWNTO 0), 
		sw_in_r=>in4_r(0), sa_in_r=>in4_r(1), sw_out_r=>n4_in4_br(0), sa_out_r=>n4_in4_br(1),
		east_fdata_in=>X"00000", ew_bdata_out=>open, ea_bdata_out=>open, ea_in_r=>'0', ew_in_r=>'0', ea_out_r=>open,
		ew_out_r=>open, west_fdata_in=>n3_n4_fd, wa_bdata_out=>n4_n3_bd(39 DOWNTO 19), wa_in_r=>n3_n4_r(0), wa_out_r=>n4_n3_br(0), 
		north_fdata_out=>n4_fdata, north_bdata_in0=>n4_bdata(59 DOWNTO 40), north_bdata_in1=n4_bdata(39 DOWNTO 20), 
		north_bdata_in2=>n4_bdata(19 DOWNTO 0), north_bdata_in3=>X"00000", north_r=>n4_r, north_br=>n4_o_br, 
		west_fdata_out=>n4_n3_fd, west_bdata_in0=>n3_n4_bd(39 DOWNTO 20), west_bdata_in1=>n3_n4_bd(19 DOWNTO 0), 
		west_bdata_in2=>X"00000", west_bdata_in3=>X"00000", west_r=>n4_n3_fr, west_br=>n3_n4_br);

end Behavioral;

