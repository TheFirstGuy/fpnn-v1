----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:47:06 04/10/2016 
-- Design Name: 
-- Module Name:    neuron - Behavioral 
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

entity corner_neuron is
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
	backward: IN STD_LOGIC;
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
end corner_neuron;

architecture Behavioral of corner_neuron is

component activator_skeleton
generic (rand: STD_LOGIC_VECTOR( 19 DOWNTO 0 ));
PORT(
--Input
--Forward Control Signals
clk: IN STD_LOGIC;
reset: IN STD_LOGIC;
still_fwd: IN STD_LOGIC; --tells activator to go back to forward active. (we are done with back prop)
--rand_T : IN STD_LOGIC -- not implemented 
--NOTE: Not sure where these signals originate from
fwd_pred: IN STD_LOGIC_VECTOR( 3 DOWNTO 0 ); -- Forward pred request signals
foward: IN STD_LOGIC;  -- Forward activation mode

--Backwards Control Signals
bck_succ: IN STD_LOGIC_VECTOR( 3 DOWNTO 0); -- backward successors request signals
backward: IN STD_LOGIC; -- backward activation mode
broadcast: IN STD_LOGIC; -- Broadcase connections

--Forward Data Input Signals
--Data values from pred for forward activation

x_pred_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
x_pred_1: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
x_pred_2: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
x_pred_3: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";

--Backward Data Input Signals
--Data values from succ for back prop

b_succ_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
b_succ_1: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
b_succ_2: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
b_succ_3: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";

--Output Signals
y : OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- output for both forward and back prob

--Forward Control Signals
fwd_succ: OUT STD_LOGIC_VECTOR( 3 DOWNTO 0); -- Sends request to successors that forward value is ready

--Backwards Control 
back_pred: OUT STD_LOGIC_VECTOR( 3 DOWNTO 0 ) -- Sends request to preds that back propagation value is ready

);
end component;

component link_skeleton
generic (rand: STD_LOGIC_VECTOR( 19 DOWNTO 0 ));
PORT(
--Input
--Forward Control Signals
clk: IN STD_LOGIC;
reset: IN STD_LOGIC;
--rand_W : IN STD_LOGIC -- not implemented 
--NOTE: Not sure where these signals originate from
--rp_pred: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if pred connections exist
--rn_succ: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if succ connections exist
fwd_pred: IN STD_LOGIC_VECTOR( 3 DOWNTO 0 ) := "0000"; -- Forward pred request signals
foward: IN STD_LOGIC;  -- Forward activation mode

--Backwards Control Signals
bck_succ: IN STD_LOGIC_VECTOR( 3 DOWNTO 0); -- backward successors request signals
backward: IN STD_LOGIC; -- backward activation mode
update: IN STD_LOGIC; -- update weight control signal
broadcast: IN STD_LOGIC; -- Broadcase connections

--Forward Data Input Signals
--Data values from pred for forward activation
x_pred_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
x_pred_1: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
x_pred_2: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
x_pred_3: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";

--Backward Data Input Signals
--Data values from succ for back prop
b_succ_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
b_succ_1: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
b_succ_2: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
b_succ_3: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";

--Output Signals
y : OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- output for both forward and back prob

--Forward Control Signals
fwd_succ: OUT STD_LOGIC_VECTOR( 3 DOWNTO 0); -- Sends request to successors that forward value is ready

--Backwards Control 
back_pred: OUT STD_LOGIC_VECTOR( 3 DOWNTO 0 ) -- Sends request to preds that back propagation value is ready

);
end component;

--Activator signals
SIGNAL north_back_r: STD_LOGIC;
SIGNAL act_out: STD_LOGIC_VECTOR(19 DOWNTO 0);
SIGNAL act_fwd_r: STD_LOGIC_VECTOR(3 DOWNTO 0);
--West Signals
SIGNAL west_y: STD_LOGIC_VECTOR(19 DOWNTO 0);

--North Signals
SIGNAL north_y: STD_LOGIC_VECTOR(19 DOWNTO 0);

--NULLS
SIGNAL ground: STD_LOGIC_VECTOR(7 DOWNTO 0);
begin
	--PORT MAP
	ACT: activator_skeleton 
	GENERIC MAP (rand => rand1)
	PORT MAP(clk=>clk, reset=>reset, still_fwd=>still_fwd, 
		fwd_pred(0)=>wa_in_r, fwd_pred(1)=>sa_in_r, fwd_pred(2)=>ea_in_r, fwd_pred(3)=>'0',
		foward=>forward, bck_succ(0)=>north_back_r, bck_succ(3 DOWNTO 1)=>"000", backward=>backward,
		broadcast=>broadcast, x_pred_0=>west_fdata_in, x_pred_1=>south_fdata_in,
		x_pred_2=>east_fdata_in, x_pred_3=>X"00000", b_succ_0=>north_y, y=>act_out, fwd_succ=>act_fwd_r,
		back_pred(0)=> wa_out_r, back_pred(1)=>sa_out_r, back_pred(2)=>ea_out_r, back_pred(3)=>ground(0));
	
	
	WL: link_skeleton 
	GENERIC MAP (rand => rand2)
	PORT MAP( clk=>clk, reset=>reset, fwd_pred(0)=>ew_in_r, fwd_pred(1)=>sw_in_r,
		fwd_pred(3 DOWNTO 2)=>"00", foward=>forward, bck_succ=>west_br, backward=>backward, update=>update,
		broadcast=>broadcast, x_pred_0=>east_fdata_in, x_pred_1=>south_fdata_in, x_pred_2=>open, x_pred_3=>open,
		b_succ_0=>west_bdata_in0, b_succ_1=>west_bdata_in1, b_succ_2=>west_bdata_in2,
		b_succ_3=>west_bdata_in3, y=>west_y, fwd_succ=>west_r, back_pred(0)=>ew_out_r, back_pred(1)=>sw_out_r,
		back_pred(3 DOWNTO 2)=>ground(2 DOWNTO 1));
	
	NL: link_skeleton 
	GENERIC MAP (rand => rand3)
	PORT MAP( clk=>clk, reset=>reset, fwd_pred(0)=>act_fwd_r(0), fwd_pred(3 DOWNTO 1)=>"000",
		foward=>forward, bck_succ=>north_br, backward=>backward, update=>update, broadcast=>broadcast, x_pred_0=>act_out,
		x_pred_1=>open, x_pred_2=>open, x_pred_3=>open, b_succ_0=>north_bdata_in0, b_succ_1=>north_bdata_in1,
		b_succ_2=>north_bdata_in2, b_succ_3=>north_bdata_in3, y=>north_y, fwd_succ=>north_r, back_pred(0)=>north_back_r,
		back_pred(3 DOWNTO 1)=>ground(5 DOWNTO 3));
	

	west_fdata_out<=west_y;
	ew_bdata_out<=west_y;
	sw_bdata_out<=west_y;
	ea_bdata_out<=act_out;
	wa_bdata_out<=act_out;
	sa_bdata_out<=act_out;
	north_fdata_out<=north_y;
end Behavioral;