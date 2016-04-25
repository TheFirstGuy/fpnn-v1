----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:15:16 04/19/2016 
-- Design Name: 
-- Module Name:    xor_net - Behavioral 
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

entity xor_net is
PORT(
clk: IN STD_LOGIC;
reset: IN STD_LOGIC;
--Input Links in and out
uart_in1: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
u_fwd_pred1: IN STD_LOGIC;

uart_in2: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
u_fwd_pred2: IN STD_LOGIC
);
end xor_net;

architecture Behavioral of xor_net is

component inputLink is
PORT(
	--Data
	y: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	fwd_succ: OUT STD_LOGIC;
	-- UART IN
	uart_in: IN STD_LOGIC_VECTOR(19 DOWNTO 0); 
	-- Control Signal
	fwd_pred: IN STD_LOGIC --Forward request signal
);
end component;

component neuron is
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

component corner_neuron is
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

component activator_skeleton is
PORT(
--Input
--Forward Control Signals
clk: IN STD_LOGIC;
reset: IN STD_LOGIC;
still_fwd: IN STD_LOGIC; --tells activator to go back to forward active. (we are done with back prop)
--rand_T : IN STD_LOGIC -- not implemented 
--NOTE: Not sure where these signals originate from
--rp_pred: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if pred connections exist
--sn_succ: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if succ connections exist
fwd_pred: IN STD_LOGIC_VECTOR( 3 DOWNTO 0 ); -- Forward pred request signals
foward: IN STD_LOGIC;  -- Forward activation mode

--Backwards Control Signals
bck_succ: IN STD_LOGIC_VECTOR( 3 DOWNTO 0); -- backward successors request signals
backward: IN STD_LOGIC; -- backward activation mode
broadcast: IN STD_LOGIC; -- Broadcase connections

--Forward Data Input Signals
--Data values from pred for forward activation

x_pred_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
x_pred_1: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
x_pred_2: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
x_pred_3: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );

--Backward Data Input Signals
--Data values from succ for back prop

b_succ_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
b_succ_1: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
b_succ_2: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
b_succ_3: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );

--Output Signals
y : OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- output for both forward and back prob

--Forward Control Signals
fwd_succ: OUT STD_LOGIC_VECTOR( 3 DOWNTO 0); -- Sends request to successors that forward value is ready

--Backwards Control 
back_pred: OUT STD_LOGIC_VECTOR( 3 DOWNTO 0 ) -- Sends request to preds that back propagation value is ready

);
end component;

--Node to network CU
SIGNAL broadcast: STD_LOGIC;
SIGNAL forward: STD_LOGIC;
SIGNAL still_fwd: STD_LOGIC;
SIGNAL backward: STD_LOGIC;
SIGNAL update: STD_LOGIC;



--Input Link To Neuron Signals
SIGNAL input1Node1: STD_LOGIC_VECTOR(19 DOWNTO 0); -- Input data transfer from input link to node 1
SIGNAL input1_fwd_req: STD_LOGIC;
SIGNAL input2Node2: STD_LOGIC_VECTOR(19 DOWNTO 0);
SIGNAL input2_fwd_req: STD_LOGIC;
--Neuron to Control Unit Signals
SIGNAL back_prop_done: STD_LOGIC_VECTOR(3 DOWNTO 0); -- Collects back prop requests to input nodes

--Neuron to Neuron signals
SIGNAL o_y, n3_n1_y, n1_n3_y, n1_n4_y, n3_n2_y, n2_n4_y, n2_n3_y, n3_n4_y: STD_LOGIC_VECTOR(19 DOWNTO 0); -- Forward signals
SIGNAL n3_n1_b, n1_n3_b, n2_n3_b, n3_n2_b, n4_b, n3_b, error_b: STD_LOGIC_VECTOR(19 DOWNTO 0); -- Backward signals
SIGNAL n3_n1_fr, n1_n3_br, n3_n2_fr, n2_n3_br, error_br, net_fwd_done: STD_LOGIC;
SIGNAL n1_nfr, n2_nfr, n3_nfr: STD_LOGIC_VECTOR(3 DOWNTO 0); --hidden layer activator request signal
SIGNAL n1_n3_fr, n3_n1_br, n2_n3_fr, n3_n2_br: STD_LOGIC_VECTOR(3 DOWNTO 0); -- Forward and backward requests for links
SIGNAL n4_br: STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ground: STD_LOGIC := '0'; -- to sink open inputs
SIGNAL openGround: STD_LOGIC_VECTOR(12 DOWNTO 0);-- To sink partially mapped vectors 
begin

	IL1: inputLink PORT MAP( y=>input1Node1, fwd_succ=>input1_fwd_req, uart_in=>uart_in1,
	fwd_pred=>u_fwd_pred1);

	IL2: inputLink PORT MAP( y=>input2Node2, fwd_succ=>input2_fwd_req, uart_in=>uart_in2,
	fwd_pred=>u_fwd_pred2);

	--South port is input link
	--Node 1 connects to input link 1, to the middle neuron (node3) and to the output neuron (node4)
	--Because it is a corner node, the east link has been removed.
	Node1: corner_neuron PORT MAP( clk=>clk, broadcast=>broadcast, forward=>forward, still_fwd=>still_fwd,
	backward=>backward, update=>update, reset=>reset, south_fdata_in=>input1Node1, sw_bdata_out=>open, sa_bdata_out=>open,
	sw_in_r=>input1_fwd_req, sa_in_r=>ground, sw_out_r=>back_prop_done(0), sa_out_r=>back_prop_done(1),
	east_fdata_in=>X"00000", ew_bdata_out=>open, ea_bdata_out=>open, ea_in_r=>ground, ew_in_r=>ground, ea_out_r=>open,
	ew_out_r=>open, west_fdata_in=>n3_n1_y, wa_bdata_out=>n1_n3_b, wa_in_r=>n3_n1_fr, wa_out_r=>n1_n3_br, we_out_r=>open,
	north_fdata_out=>n1_n4_y, north_bdata_in0=>n4_b, north_bdata_in1=>X"00000", north_bdata_in2=>X"00000", north_bdata_in3=>X"00000",
	north_r=>n1_nfr, north_br(0)=>n4_br(0), north_br(1)=>ground, north_br(2)=>ground, north_br(3)=>ground,
	west_fdata_out=>n1_n3_y, west_bdata_in0=>n3_b, west_bdata_in1=>n3_n1_b, west_bdata_in2=>X"00000", west_bdata_in3=>X"00000",
	west_r=>n1_n3_fr, west_br=>n3_n1_br);
	
	--Node 2 connections to input link 2, to the middle neuron (node3) and to the output neuron (node 4)
	Node2: corner_neuron PORT MAP( clk=>clk, broadcast=>broadcast, forward=>forward, still_fwd=>still_fwd,
	backward=>backward, update=>update, reset=>reset, south_fdata_in=>input2Node2, sw_bdata_out=>open, sa_bdata_out=>open,
	sw_in_r=>input1_fwd_req, sa_in_r=>ground, sw_out_r=>back_prop_done(2), sa_out_r=>back_prop_done(3),
	east_fdata_in=>X"00000", ew_bdata_out=>open, ea_bdata_out=>open, ea_in_r=>ground, ew_in_r=>ground, ea_out_r=>open,
	ew_out_r=>open, west_fdata_in=>n3_n2_y, wa_bdata_out=>n2_n3_b, wa_in_r=>n3_n2_fr, wa_out_r=>n2_n3_br, we_out_r=>open,
	north_fdata_out=>n2_n4_y, north_bdata_in0=>n4_b, north_bdata_in1=>X"00000", north_bdata_in2=>X"00000", north_bdata_in3=>X"00000",
	north_r=>n2_nfr, north_br(0)=>n4_br(2), north_br(1)=>ground, north_br(2)=>ground, north_br(3)=>ground,
	west_fdata_out=>n2_n3_y, west_bdata_in0=>n3_b, west_bdata_in1=>n3_n2_b, west_bdata_in2=>X"00000", west_bdata_in3=>X"00000",
	west_r=>n2_n3_fr, west_br=>n3_n2_br);
	
	--Node 3 is the central neuron. It recieves its inputs from its link connections from node 1 and 2. 
	-- Node 3 is a full neuron with bi direction links and an output link
	Node3: neuron PORT MAP(clk=>clk, broadcast=>broadcast, forward=>forward, still_fwd=>still_fwd,
	backward=>backward, update=>update, reset=>reset, south_fdata_in=>X"00000", sw_bdata_out=>open, sa_bdata_out=>open, se_bdata_out=>open,
	sw_in_r=>ground, sa_in_r=>ground, se_in_r=>ground, sw_out_r=>open, sa_out_r=>open, se_out_r=>open,
	east_fdata_in=>n2_n3_y, ew_bdata_out=>n3_n2_b, ea_bdata_out=>n3_b, ea_in_r =>n2_n3_fr(0), ew_in_r=>n2_n3_fr(1),
	ea_out_r=>n3_n2_br(0), ew_out_r=>n3_n2_br(1), west_fdata_in=>n1_n3_y, we_bdata_out=>n3_n1_b, wa_bdata_out=>n3_b,
	wa_in_r=>n1_n3_fr(0), we_in_r=>n1_n3_fr(1), wa_out_r=>n3_n1_br(0), we_out_r=>n3_n1_br(1),
	north_fdata_out=>n3_n4_y, north_bdata_in0=>n4_b, north_bdata_in1=>X"00000", north_bdata_in2=>X"00000", 
	north_bdata_in3=>X"00000", north_r=>n3_nfr, north_br(0)=>n4_br(1), north_br(1)=>ground, north_br(2)=>ground, north_br(3)=>ground,
	east_fdata_out=>n3_n2_y, east_bdata_in0=>n2_n3_b, east_bdata_in1=>X"00000", east_bdata_in2=>X"00000",
	east_bdata_in3=>X"00000", east_r(0)=>n3_n2_fr, east_r(3 DOWNTO 1)=>openGround(2 DOWNTO 0), east_br(0)=>n3_n2_br(0), east_br(3 DOWNTO 1)=>openGround(5 DOWNTO 3),west_fdata_out=>n3_n1_y,
	west_bdata_in0=>n1_n3_b, west_bdata_in1=>X"00000", west_bdata_in2=>X"00000", west_bdata_in3=>X"00000", west_r(0)=>n3_n1_fr, west_r(3 DOWNTO 1)=>openGround(8 DOWNTO 6),
	west_br(0)=>n1_n3_br, west_br(3 DOWNTO 1)=>"000");

	--Node 4 is simply an activator. When forward request is sent from Node4, forward activation is complete.
	Node4: activator_skeleton PORT MAP( clk=>clk, reset=>reset, still_fwd=>still_fwd, fwd_pred(0)=>n1_nfr(0), fwd_pred(1)=>n2_nfr(0), fwd_pred(2)=>n3_nfr(0), fwd_pred(3)=>'0',
	foward=>forward, bck_succ(0)=>error_br, bck_succ(3 DOWNTO 1)=>"000", backward=>backward, broadcast=>broadcast, x_pred_0=>n1_n4_y,
	x_pred_1=>n2_n4_y, x_pred_2=>n3_n4_y, x_pred_3=>X"00000", b_succ_0=>error_b, b_succ_1=>X"00000", b_succ_2=>X"00000",
	b_succ_3=>X"00000", y=>o_y, fwd_succ(0)=>net_fwd_done, fwd_succ(3 DOWNTO 1)=>openGround(10 DOWNTO 8), back_pred(2 DOWNTO 0)=>n4_br,
	back_pred(3)=>openGround(12));
end Behavioral;
