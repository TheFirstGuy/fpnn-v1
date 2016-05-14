----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:48:30 05/14/2016 
-- Design Name: 
-- Module Name:    iris_net - Behavioral 
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

entity iris_net is
generic (
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
	rand13 : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"F132d"
	);
PORT(
	clk: IN STD_LOGIC;
	reset: IN STD_LOGIC;
	--Input Links in and out
	uart_in1: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	u_fwd_pred1: IN STD_LOGIC;

	uart_in2: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	u_fwd_pred2: IN STD_LOGIC;
	
	uart_in3: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	u_fwd_pred3: IN STD_LOGIC;
	
	uart_in4: IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	u_fwd_pred4: IN STD_LOGIC;

	uart_cval1: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- Correct value of uart
	uart_cval2: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- Correct value of uart
	uart_cval3: IN STD_LOGIC_VECTOR(19 DOWNTO 0); -- Correct value of uart
	io_val: IN STD_LOGIC; -- io valid
	output_val: OUT STD_LOGIC;
	u_art_out1: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	u_art_out2: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	u_art_out3: OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
);
end iris_net;

architecture Behavioral of iris_net is

component link_skeleton is
generic (rand: STD_LOGIC_VECTOR( 19 DOWNTO 0 );
			pred: STD_LOGIC_VECTOR(3 DOWNTO 0):=X"7";
			succ: STD_LOGIC_VECTOR(3 DOWNTO 0):=X"1");
PORT(
--Input
--Forward Control Signals
clk: IN STD_LOGIC;
reset: IN STD_LOGIC;
--rand_W : IN STD_LOGIC -- not implemented 
--NOTE: Not sure where these signals originate from
--rp_pred: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if pred connections exist
--rn_succ: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if succ connections exist
fwd_pred: IN STD_LOGIC_VECTOR( 3 DOWNTO 0 ); -- Forward pred request signals
foward: IN STD_LOGIC;  -- Forward activation mode

--Backwards Control Signals
bck_succ: IN STD_LOGIC_VECTOR( 3 DOWNTO 0); -- backward successors request signals
backward: IN STD_LOGIC; -- backward activation mode
update: IN STD_LOGIC; -- update weight control signal --------------------------------------------------------- Now a signal Update<=forward
--broadcast: IN STD_LOGIC; -- Broadcase connections
still_fwd: IN STD_LOGIC;
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

component control_unit is
    Port ( clk : in std_logic;  --Clock
           rst : in std_logic;  --Reset
           f_init : in std_logic;   --Forward Initialize
           f_val : in std_logic;    --Forward Valid
           b_val : in std_logic;    --Backward Valid
           io_val : in std_logic;   --I/O Ready
          -- bcast_en : out std_logic;    --Broadcast Enable
           io_rdy : out std_logic;  --I/O Ready
           f_en : out std_logic;    --Forward Enable
           b_en : out std_logic;   --Backward Enable
			  still_fwd: out STD_LOGIC;  
			  u_en : out std_logic); --Update enable
end component;

component err is
    Port ( clk : in std_logic;  --Clock
           rst : in std_logic;  --Reset
			 -- broadcast : in std_logic; -- broadcast
			  rslt_valid : in std_logic; -- result ready
           rslt : in std_logic_vector(19 downto 0); --Calculated Result
           c_val : in std_logic_vector(19 downto 0);    --Classification Value
           err : out std_logic_vector(19 downto 0);    --Calculated Error
			  err_valid: out std_logic); -- error output valid
end component;

component brick_4 is
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
	rand15 : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"F8000";
	rand16 : STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"07210";

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
end component;


--Node to network CU
--SIGNAL broadcast: STD_LOGIC;
SIGNAL forward: STD_LOGIC;
SIGNAL still_fwd: STD_LOGIC;
SIGNAL backward: STD_LOGIC;
SIGNAL update: STD_LOGIC;
SIGNAL f_init: STD_LOGIC := '0'; -- Will use for hybrid activation mod
SIGNAL f_val: STD_LOGIC; -- When forward activation is done
SIGNAL b_val: STD_LOGIC; -- When back prop is done
SIGNAL io_rdy: STD_LOGIC;

--Input Link To Neuron Signals
SIGNAL input1Node1: STD_LOGIC_VECTOR(19 DOWNTO 0); -- Input data transfer from input link to node 1
SIGNAL input1_fwd_req: STD_LOGIC_VECTOR( 3 DOWNTO 0); -- Input requests from input link to node 1
SIGNAL input2Node2: STD_LOGIC_VECTOR(19 DOWNTO 0);
SIGNAL input2_fwd_req: STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL input3Node3: STD_LOGIC_VECTOR(19 DOWNTO 0); -- Input data transfer from input link to node 1
SIGNAL input3_fwd_req: STD_LOGIC_VECTOR( 3 DOWNTO 0); -- Input requests from input link to node 1
SIGNAL input4Node4: STD_LOGIC_VECTOR(19 DOWNTO 0);
SIGNAL input4_fwd_req: STD_LOGIC_VECTOR( 3 DOWNTO 0);
--Neuron to Control Unit Signals
SIGNAL back_prop_done: STD_LOGIC_VECTOR(3 DOWNTO 0); -- Collects back prop requests to input nodes

--Neuron to Neuron signals
SIGNAL o1_y, o2_y, o3_y, l1_n1_l2_n1_y, l1_n2_l2_n2_y,l1_n3_l2_n3_y, l1_n4_l2_n4_y, l2_n1_on1_y, l2_n2_ol_y, l2_n3_ol_y, l2_n3_on3_y, ol_n2_y: STD_LOGIC_VECTOR(19 DOWNTO 0); -- Forward signals
SIGNAL error_b1, error_b2, error_b3: STD_LOGIC_VECTOR(19 DOWNTO 0); -- Eroor Backward signals
SIGNAL n1_in1_b, n4_in4_b, l2_n1_l1_n1_b, l2_n4_l1_n4_b, on1_l2_n1_b, on3_l2_n4_b, ol_l2_b : STD_LOGIC_VECTOR( 39 DOWNTO 0); -- Corner Backward signals (40 bit back)
SIGNAL n2_in2_b, n3_in3_b, l2_n2_l1_n2_b, l2_n3_l1_n3_b, on2_ol_b : STD_LOGIC_VECTOR( 59 DOWNTO 0); -- Middle Backward Signals (60 bits)
SIGNAL in1_n1_fr, in2_n2_fr, in3_n3_fr, in4_n4_fr, l1_n1_l2_n1_fr, l1_n2_l2_n2_fr, l1_n3_l2_n3_fr, l1_n4_l2_n4_fr, l2_n1_on1_fr, l2_n2_ol_fr, l2_n3_ol_fr, l2_n4_o4_fr, on1_fr, on2_fr, on3_fr : STD_LOGIC(3 DOWNTO 0); -- FORWARD reqest signals
SIGNAL n1_in1_br, n2_in2_br, n3_in3_br, n4_in4_br, l2_n1_l1_n1_br, l2_n2_l1_n2_br, l2_n3_l1_n3_br, l2_n4_l1_n4_br, on1_l2_n1_br, on2_ol_br, on3_ol_br, on3_l2_n4_br, ol_l2_n2_br, ol_l2_n3_br,error1_br, error2_br, error3_br: STD_LOGIC_VECTOR( 3 DOWNTO 0 ); -- Backward request signal


-- SIDWAYS SIGNALS FOR OUTPUT LAYER
--Sideways forward request Signals
SIGNAL n1_n2_fr, n2_n1_fr, n2_n3_fr, n3_n2_fr: STD_LOGIC(3 DOWNTO 0 );
-- Sideways backward request Signals
SIGNAL n2_n1_br, n1_n2_br, n2_n3_br, n3_n2_br: STD_LOGIC(3 DOWNTO 0 );
--Sideways fdata
SIGNAL n1_n2_fd, n2_n1_fd, n2_n3_fd, n3_n2_fd: STD_LOGIC(19 DOWNTO 0 );
--Sideways bdata
SIGNAL n1_n2_bd, n2_n1_bd, n2_n3_bd, n3_n2_bd: STD_LOGIC(39 DOWNTO 0 );



--
--SIGNAL n3_n1_fr, n1_n3_br, n3_n2_fr, n2_n3_br, error_br,n3_in1_br, n1_in1_br, n3_in2_br, n2_in2_br , net_fwd_done: STD_LOGIC; 
--SIGNAL n1_nfr, n2_nfr, n3_nfr: STD_LOGIC_VECTOR(3 DOWNTO 0); --hidden layer activator request signal
--SIGNAL n1_n3_fr, n3_n1_br, n2_n3_fr, n3_n2_br : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Forward and backward requests for links
--SIGNAL n4_br: STD_LOGIC_VECTOR(2 DOWNTO 0);

SIGNAL sink: STD_LOGIC_VECTOR(5 DOWNTO 0);-- Another sink 
begin

	CU: control_unit
	PORT MAP(clk=>clk, rst=>reset, f_init=>f_init, f_val=>f_val, b_val=>b_val, io_val=>io_val, --bcast_en=>broadcast,
	io_rdy=>io_rdy,f_en=>forward, b_en=>backward, u_en=>update, still_fwd=>still_fwd );
	
	b_val <= back_prop_done(0) AND back_prop_done(1) AND back_prop_done(2) AND back_prop_done(3);
	
	
IL1: link_skeleton 
	GENERIC MAP(rand => rand1, pred=>X"1", succ=>X"3")
	PORT MAP( clk=>clk, reset=>reset, fwd_pred(0)=>u_fwd_pred1, 
		fwd_pred(3 DOWNTO 1)=>"000", foward=>forward, bck_succ=>n1_in1_br,
		backward=>backward, update=>update, --broadcast=>broadcast,
		still_fwd=>still_fwd, x_pred_0=>uart_in1, x_pred_1=>X"00000", x_pred_2=>X"00000", x_pred_3=>X"00000",
		b_succ_0=>n1_in1_b(39 DOWNTO 20), b_succ_1=>n1_in1_b(19 DOWNTO 0), b_succ_2=>X"00000", b_succ_3=>X"00000", y=>input1Node1, fwd_succ=>input1_fwd_req, 
		back_pred(0)=>back_prop_done(0), back_pred(3 DOWNTO 1)=>sink(2 DOWNTO 0));

IL2: link_skeleton 
	GENERIC MAP (rand => rand2, pred=>X"1", succ=>X"7")
	PORT MAP( clk=>clk, reset=>reset, fwd_pred(0)=>u_fwd_pred2,
		fwd_pred(3 DOWNTO 1)=>"000", foward=>forward, bck_succ=>n2_in2_br,
		backward=>backward, update=>update, --broadcast=>broadcast,
		still_fwd=>still_fwd, x_pred_0=>uart_in2, x_pred_1=>X"00000", x_pred_2=>X"00000", x_pred_3=>X"00000",
		b_succ_0=>n2_in2_b(59 DOWNTO 40), b_succ_1=>n2_in2_b(39 DOWNTO 20), b_succ_2=>n2_in2_b(19 DOWNTO 0), b_succ_3=>X"00000", y=>input2Node2, fwd_succ=>input2_fwd_req,
		back_pred(0)=>back_prop_done(1), back_pred(3 DOWNTO 1)=>sink(5 DOWNTO 3));

IL3: link_skeleton 
	GENERIC MAP (rand => rand2, pred=>X"1", succ=>X"7")
	PORT MAP( clk=>clk, reset=>reset, fwd_pred(0)=>u_fwd_pred3,
		fwd_pred(3 DOWNTO 1)=>"000", foward=>forward, bck_succ=>n3_in3_br,
		backward=>backward, update=>update, --broadcast=>broadcast,
		still_fwd=>still_fwd, x_pred_0=>uart_in3, x_pred_1=>X"00000", x_pred_2=>X"00000", x_pred_3=>X"00000",
		b_succ_0=>n3_in3_b(59 DOWNTO 40), b_succ_1=>n3_in3_b(39 DOWNTO 20), b_succ_2=>n3_in3_b(19 DOWNTO 0), b_succ_3=>X"00000", y=>input3Node3, fwd_succ=>input3_fwd_req,
		back_pred(0)=>back_prop_done(2), back_pred(3 DOWNTO 1)=>sink(5 DOWNTO 3));	

IL4: link_skeleton 
	GENERIC MAP(rand => rand1, pred=>X"1", succ=>X"3")
	PORT MAP( clk=>clk, reset=>reset, fwd_pred(0)=>u_fwd_pred4, 
		fwd_pred(3 DOWNTO 1)=>"000", foward=>forward, bck_succ=>n4_in4_br,
		backward=>backward, update=>update, --broadcast=>broadcast,
		still_fwd=>still_fwd, x_pred_0=>uart_in3, x_pred_1=>X"00000", x_pred_2=>X"00000", x_pred_3=>X"00000",
		b_succ_0=>n4_in4_b(39 DOWNTO 20), b_succ_1=>n4_in4_b(19 DOWNTO 0), b_succ_2=>X"00000", b_succ_3=>X"00000", y=>input4Node4, fwd_succ=>input4_fwd_req, 
		back_pred(0)=>back_prop_done(3), back_pred(3 DOWNTO 1)=>sink(2 DOWNTO 0));	

L1: brick_4
PORT MAP(
	clk=>clk,
	forward=>forward,
	still_fwd=>still_fwd,
	backward=>backward,
	update=>update,
	reset=>reset,
	
	-- South IO
	in1_r=>input1_fwd_req,-- Corner
	in2_r=>input2_fwd_req,
	in3_r=>input3_fwd_req,
	in4_r=>input4_fwd_req,--Corner
	
	in1_fdata=>input1Node1,
	in2_fdata=>input2Node2,
	in3_fdata=>input3Node3,
	in4_fdata=>input4Node4,
	
	n1_in1_br=>n1_in1_br(1 DOWNTO 0),--Corner
	n2_in2_br=>n2_in2_br(2 DOWNTO 0),
	n3_in3_br=>n3_in3_br(2 DOWNTO 0),
	n4_in4_br=>n4_in4_br(1 DOWNTO 0),--Corner
	
	n1_in1_bdata=>n1_in1_b,--Corner
	n2_in2_bdata=>n2_in2_b,
	n3_in3_bdata=>n3_in3_b,
	n4_in4_bdata=>n4_in4_b,--Corner
	
	-- North IO
	n1_r=>l1_n1_l2_n1_fr,
	n2_r=>l1_n2_l2_n2_fr,
	n3_r=>l1_n3_l2_n3_fr,
	n4_r=>l1_n4_l2_n4_fr,
	
	n1_fdata=>l1_n1_l2_n1_y,
	n2_fdata=>l1_n2_l2_n2_y,
	n3_fdata=>l1_n3_l2_n3_y,
	n4_fdata=>l1_n4_l2_n4_y,
	
	n1_o_br=>l2_n1_l1_n1_br,
	n2_o_br=>l2_n2_l1_n2_br,
	n3_o_br=>l2_n3_l1_n3_br,
	n4_o_br=>l2_n4_l1_n4_br,
	
	n1_bdata=>l2_n1_l1_n1_b,
	n2_bdata=>l2_n2_l1_n2_b,
	n3_bdata=>l2_n3_l1_n3_b,
	n4_bdata=>l2_n4_l1_n4_b
	
);

L2: brick_4
GENERIC MAP( 
	-- Input rp_pred
	n1_in=> X"3",
	n2_in=> X"7",
	n3_in=> X"7",
	n4_in=> X"3",
	
	-- Out Sn_succ
	n1_out=> X"7",
	n2_out=> X"1",
	n3_out=> X"1",
	n4_out=> X"7"
	)
PORT MAP(
	clk=>clk,
	forward=>forward,
	still_fwd=>still_fwd,
	backward=>backward,
	update=>update,
	reset=>reset,
	
	-- South IO
	in1_r=>l1_n1_l2_n1_fr,-- Corner
	in2_r=>l1_n2_l2_n2_fr,
	in3_r=>l1_n3_l2_n3_fr,
	in4_r=>l1_n4_l2_n4_fr,--Corner
	
	in1_fdata=>l1_n1_l2_n1_y,
	in2_fdata=>l1_n2_l2_n2_y,
	in3_fdata=>l1_n3_l2_n3_y,
	in4_fdata=>l1_n4_l2_n4_y,
	
	n1_in1_br=>l2_n1_l1_n1_br(1 DOWNTO 0),--Corner
	n2_in2_br=>l2_n2_l1_n2_br(2 DOWNTO 0),
	n3_in3_br=>l2_n3_l1_n3_br(2 DOWNTO 0),
	n4_in4_br=>l2_n4_l1_n4_br(1 DOWNTO 0),--Corner
	
	n1_in1_bdata=>l2_n1_l1_n1_b,--Corner
	n2_in2_bdata=>l2_n2_l1_n2_b,
	n3_in3_bdata=>l2_n3_l1_n3_b,
	n4_in4_bdata=>l2_n4_l1_n4_b,--Corner
	
	-- North IO
	n1_r=>l2_n1_on1_fr,
	n2_r=>l2_n2_ol_fr,
	n3_r=>l2_n3_ol_fr,
	n4_r=>l2_n4_on3_fr,
	
	n1_fdata=>l2_n1_on1_y,
	n2_fdata=>l2_n2_ol_y,
	n3_fdata=>l2_n3_ol_y,
	n4_fdata=>l2_n4_on3_y,
	
	n1_o_br=>l2_n1_l1_n1_br,
	n2_o_br=>l2_n2_l1_n2_br,
	n3_o_br=>l2_n3_l1_n3_br,
	n4_o_br=>l2_n4_l1_n4_br,
	
	n1_bdata=>on1_l2_n1_br,
	n2_bdata=>ol_l2_n2_br,
	n3_bdata=>ol_l2_n3_br,
	n4_bdata=>on3_l2_n4_br
	);

		
end Behavioral;

