----------------------------------------------------------------------------------
-- Company: ECAL
-- Engineer: Urs Evora
-- 
-- Create Date:    18:08:01 03/04/2016 
-- Design Name: 	
-- Module Name:    activator_skeleton - Behavioral 
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

entity activator_skeleton is
generic (rand: STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"08000");
PORT(
--Input
--Forward Control Signals
--debug: OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 );
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
end activator_skeleton;

architecture Behavioral of activator_skeleton is




component MULT
	port(
			reset : IN  STD_LOGIC;
			clock : IN  STD_LOGIC;
				en : IN  STD_LOGIC;
         Input : IN  STD_LOGIC_VECTOR(19 DOWNTO 0):=x"00000";
			    W : IN  STD_LOGIC_VECTOR(19 DOWNTO 0):=x"00000";
        Output : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
		  ready  : OUT STD_LOGIC:='0'
		  );
end component;

component acc_f is
    Port ( clk : in std_logic;
           rst0 : in std_logic;
           rst1 : in std_logic;
           f_in : in std_logic_vector(19 downto 0);
           en : in std_logic;
           init0 : in std_logic_vector(19 downto 0);
           init1 : in std_logic_vector(19 downto 0);
           f_out : out std_logic_vector(19 downto 0));
end component;

component oneminusx is
	PORT  (
			 Input : IN  STD_LOGIC_VECTOR(19 DOWNTO 0):=x"00000";
			Output : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
	);
end component;

component ACC_W is
	generic (rand: STD_LOGIC_VECTOR( 19 DOWNTO 0 ));
	PORT(
			 clk: IN STD_LOGIC;
		write_w: IN STD_LOGIC; -- enable controlled by rand or update signal
		mult_in: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- accumlated weight for learning
		  w_out: OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 )); -- Output weight
end component;

component acc_b is
	port (
		 clk: in std_logic;	--Clock Input
		 rst: in std_logic;	--Reset Input
		b_in: in std_logic_vector(19 downto 0);	--Accumulator Input
		b_en: in std_logic;	--Accumulator Enable
		b_out: out std_logic_vector(19 downto 0));	--Accumulator Output
end component;

component COEFFS is
	PORT(
		  degree: IN STD_LOGIC_VECTOR( 1 DOWNTO 0 );	
		 address: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
			coeff: OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 )
	);
end component;

component CNT is
	PORT(
			clk: IN STD_LOGIC;
		enable: IN STD_LOGIC;
		 reset: IN STD_LOGIC;
			fin: OUT STD_LOGIC;
		degree: OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
end component;

component adder is
    Port ( 
			  clk : in std_logic;
           rst : in std_logic;
            en : in std_logic;
			save_a: in std_logic; -- For Horner Scheme	
		   save_b: in std_logic; -- For back propagation step
				 a : in std_logic_vector(19 downto 0);
			 	 b : in std_logic_vector(19 downto 0);
             c : out std_logic_vector(19 downto 0));
end component;

component SELECTOR is
	PORT( 
		 clr, clk : std_logic;
			forward: std_logic;
			r, reqs: in std_logic_vector(3 downto 0);
				en_a: out std_logic;
				 sel: out std_logic_vector(1 downto 0);
			  en_m : out std_logic;
		  	  res_m: out std_logic
		);
end component;

component link_bcast is
    Port ( clk : in std_logic; 
           rst : in std_logic;
           en : in std_logic; 
           p0 : in std_logic;
           p1 : in std_logic;
           p2 : in std_logic;
           p3 : in std_logic;
           p0_val : out std_logic;
           p1_val : out std_logic;
           p2_val : out std_logic;
           p3_val : out std_logic);
end component;



SIGNAL rp_pred: STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if pred connections exist
SIGNAL sn_succ: STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if succ connections exist

--ACC_B
SIGNAL acc_b_out: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- output of acc_b
SIGNAL acc_b_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- input of accumulate B
--ACC_F
SIGNAL acc_f_out: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- output of acc_f
SIGNAL acc_f_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- output of mux into ACC_F
SIGNAL acc_f_reset1: STD_LOGIC; -- Store signal for (1 - x)
SIGNAL acc_f_reset0: STD_LOGIC; -- Store signal for threshold
--ACC_T
SIGNAL acc_t_out: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- output of acc_t
SIGNAL acc_t_en: STD_LOGIC; --enable and store in ACC_T
SIGNAL acc_t_in: STD_LOGIC_VECTOR(19 DOWNTO 0); -- input to acc_t in
--Sel_fwd
SIGNAL f_sel: STD_LOGIC_VECTOR( 1 DOWNTO 0 ); -- Select signal for forward input MUX
--SIGNAL sel_fwd_reset_m: STD_LOGIC;
SIGNAL sel_fwd_en_m: STD_LOGIC;  
SIGNAL sel_fwd_en_accf: STD_LOGIC;
--Sel bck
SIGNAL sel_bck_en_m: STD_LOGIC;
--SIGNAL sel_bck_reset_m: STD_LOGIC;
SIGNAL b_sel: STD_LOGIC_VECTOR( 1 DOWNTO 0 ); -- selection from select back
SIGNAL acc_b_en: STD_LOGIC;
--Mult
SIGNAL mult_end: STD_LOGIC; -- Result when multiply is finished
SIGNAL mult_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- Input for multiplier
SIGNAL mult_w_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- Weight or acc_f input for mult
SIGNAL mult_enable: STD_LOGIC; -- controlled by CU
SIGNAL mult_reset: STD_LOGIC;
SIGNAL mult_out: STD_LOGIC_VECTOR( 19 DOWNTO 0 );
--CNT
SIGNAL cnt_en: STD_LOGIC; -- enable counter
SIGNAL fin: STD_LOGIC; -- when last degree is given
SIGNAL degree: STD_LOGIC_VECTOR( 1 DOWNTO 0 );
--ADD
SIGNAL add_en: STD_LOGIC; -- enable adder
SIGNAL add_reset: STD_LOGIC; -- reset adder
SIGNAL add_ld_a: STD_LOGIC; -- load input a   
SIGNAL add_ld_b: STD_LOGIC; -- load input b 
SIGNAL in1		: STD_LOGIC_VECTOR( 19 DOWNTO 0 );  
SIGNAL add_out: STD_LOGIC_VECTOR(19 DOWNTO 0);
--Other
SIGNAL is_back_prop: STD_LOGIC; -- Result of ANDing backwards and mult_end
SIGNAL update_reg: STD_LOGIC; -- stores input of update in register for synchronization
SIGNAL update_and_nupdate: STD_LOGIC; -- output of OR gate for mult reset
SIGNAL is_fwd: STD_LOGIC; -- Result of ANDING foward and end
--SIGNAL back_ack_all: STD_LOGIC; -- When all pred send ack signal
SIGNAL mux1_sel: STD_LOGIC; -- Selector for mux 1 (going into mult_in)
SIGNAL mux2_sel: STD_LOGIC; -- Selector for mux 2 (going into mult_w )
SIGNAL back_rdy: STD_LOGIC; -- back propagation value ready
SIGNAL forward_rdy: STD_LOGIC; --forward activation ready
--1-x
Signal omx_out: STD_LOGIC_VECTOR( 19 DOWNTO 0 );
SIGNAL F_SEL_CLR: STD_LOGIC; 
SIGNAL B_SEL_CLR: STD_LOGIC;

--PORT MAPPING FUN TIME


--State Machine
type s_type is (init, accumulate, fa0, fa1, fa2, fa3, th0, th1, bp0, bp1, bp2, bp3);
signal state, nextstate: s_type;

begin

F_SEL_CLR <= reset or backward or (still_fwd and (not rn_succ(0) or bck_succ(0)) and (not rn_succ(1) or bck_succ(1)) and (not rn_succ(2) or bck_succ(2)) and (not rn_succ(3) or bck_succ(3)));
B_SEL_CLR <= reset or foward;

-- PORT
U1: MULT 
	PORT MAP(reset=>mult_reset,clock=>clk,en=>mult_enable,Input=>mult_in,W=>mult_w_in,Output=>mult_out,ready=>mult_end);
U2: acc_f 
	PORT MAP(clk=>clk , rst0=>acc_f_reset0 , rst1=>acc_f_reset1 , f_in=>acc_f_in , en=>sel_fwd_en_accf , init0=>acc_t_out , init1=>omx_out , f_out=>acc_f_out );
U3: oneminusx 
	PORT MAP(Input=>mult_out, Output=>omx_out);
U4: ACC_W 
	GENERIC MAP (rand => rand)
	PORT MAP(clk=>clk,write_w=>acc_t_en,mult_in=>acc_t_in,w_out=>acc_t_out); ---ACC_T
U5: ACC_B 
	PORT MAP(clk=>clk, rst=>reset, b_in=>acc_b_in, b_en=>acc_b_en, b_out=>acc_b_out);
U6: COEFFS 
	PORT MAP(degree=>degree,address=>acc_f_out,coeff=>in1);
U7: CNT 
	PORT MAP (clk=>clk ,enable=>cnt_en, reset=>reset ,fin=>fin ,degree=>degree);
U8: adder 
	PORT MAP (clk=>clk,rst=>add_reset, en=>add_en, save_a=>add_ld_a, save_b=>add_ld_b, a=>in1, b=>mult_out, c=>add_out);
U9: SELECTOR 
	PORT MAP (clr=>reset, clk=>clk, forward=>foward, r=>fwd_pred , reqs=>rp_pred, res_m=>open , en_m=>sel_fwd_en_m, en_a=>sel_fwd_en_accf, sel=>f_sel);				---FORWARD
U10:SELECTOR 
	PORT MAP (clr=>reset, clk=>clk, forward=>backward, r=>bck_succ , reqs=>sn_succ, res_m=>open , en_m=>sel_bck_en_m, en_a=>acc_b_en, sel=>b_sel);                 ---BACK 
U11: link_bcast 
	PORT MAP(clk=>clk, rst=>reset, en=>broadcast, p0=>fwd_pred(0), p1=>fwd_pred(1), p2=>fwd_pred(2), p3=>fwd_pred(3), p0_val=>rp_pred(0), p1_val=>rp_pred(1), p2_val=>rp_pred(2), p3_val=>rp_pred(3)); -- Forward
U12: link_bcast 
	PORT MAP(clk=>clk, rst=>reset, en=>broadcast, p0=>bck_succ(0), p1=>bck_succ(1), p2=>bck_succ(2), p3=>bck_succ(3), p0_val=>sn_succ(0), p1_val=>sn_succ(1), p2_val=>sn_succ(2), p3_val=>sn_succ(3)); -- Backward

--State Machine
	stateFSM: PROCESS(clk, reset, state)
		BEGIN
			IF( reset = '1' ) THEN
				state <= init;
			ELSE
				IF( clk'EVENT and clk = '1') THEN
					state <= nextstate;
				ELSE
					state <= state;
				END IF;
			END IF;
	END PROCESS stateFSM;
	
	outputFSM: PROCESS( state, mult_end, sel_fwd_en_m, sel_bck_en_m, fin, backward, still_fwd, foward)
		BEGIN
			nextstate <= init;
			CASE state is
				WHEN init => nextstate <= accumulate;
				WHEN accumulate => IF(sel_fwd_en_m = '1') THEN nextstate <= fa0; ELSE nextstate <= accumulate; END IF;
				WHEN fa0 => nextstate <= fa1;
				WHEN fa1 => IF(fin = '1') THEN nextstate <= fa2; ELSE nextstate <= fa0; END IF;
				WHEN fa2 => IF(backward = '1' AND sel_bck_en_m = '1') THEN nextstate <= th0; ELSIF( still_fwd = '1' ) THEN nextstate <= init; ELSE nextstate <= fa2; END IF;
				--WHEN fa3 => IF(backward = '1') THEN nextstate <= th0; ELSE nextstate <= fa3; END IF;
				WHEN th0 => nextstate <= th1; 
				WHEN th1 => nextstate <= bp0;
				WHEN bp0 => nextstate <= bp1;
				WHEN bp1 => nextstate <= bp2;
				WHEN bp2 => IF( mult_end = '1') THEN nextstate <= bp3; ELSE nextstate <= bp2; END IF; 
				WHEN bp3 => IF( foward = '1') THEN nextstate <= init; ELSE nextstate <= bp3; END IF; 
				WHEN others => nextstate <= init;
			END CASE;
	END PROCESS outputFSM;
	
-- Control Signals

controlSignals: PROCESS( state )
	BEGIN
		IF( state = init ) THEN
			acc_f_reset0 <= '1';
			acc_f_reset1 <= '0';
			mult_reset <= '1';
			cnt_en <= '0';
			add_en <= '0';
			add_reset <= '1';
			add_ld_a <= '0';
			add_ld_b <= '0';
			mult_enable <= '0';
			acc_t_en <= '0';
			mux1_sel <= '0';
			mux2_sel <= '0';
			back_rdy <= '0';
			forward_rdy <= '0';
		ELSIF( state = accumulate ) THEN -- Accumulate inputs, prepare adder with first coeff
			acc_f_reset0 <= '0';
			acc_f_reset1 <= '0';
			mult_reset <= '1';
			cnt_en <= '0';
			add_en <= '1';
			add_reset <= '0';
			add_ld_a <= '1';
			add_ld_b <= '0';
			mult_enable <= '0';
			acc_t_en <= '0';
			mux1_sel <= '0';
			mux2_sel <= '0';
			back_rdy <= '0';
			forward_rdy <= '0';
		ELSIF( state = fa0 ) THEN -- Multiply and increment count
			acc_f_reset0 <= '0';
			acc_f_reset1 <= '0';
			mult_reset <= '0';
			cnt_en <= '1';
			add_en <= '0';
			add_reset <= '0';
			add_ld_a <= '0';
			add_ld_b <= '0';
			mult_enable <= '1';
			acc_t_en <= '0';
			mux1_sel <= '0';--ACC_F
			mux2_sel <= '1';--ADD
			back_rdy <= '0';
			forward_rdy <= '0';
		ELSIF( state = fa1 ) THEN-- Add multiply output and new coeffecient
			acc_f_reset0 <= '0';
			acc_f_reset1 <= '0';
			mult_reset <= '0';
			cnt_en <= '0';
			add_en <= '1';
			add_reset <= '0';
			add_ld_a <= '0';
			add_ld_b <= '0';
			mult_enable <= '0';
			acc_t_en <= '0';
			mux1_sel <= '0';--ACC_F
			mux2_sel <= '1';--ADD
			back_rdy <= '0';
			forward_rdy <= '0';
		ELSIF( state = fa2 ) THEN-- Add stores multiply and acc_f updates threshold 
			acc_f_reset0 <= '1';
			acc_f_reset1 <= '0';
			mult_reset <= '0';
			cnt_en <= '0';
			add_en <= '1';
			add_reset <= '0';
			add_ld_a <= '0';
			add_ld_b <= '1';
			mult_enable <= '0';
			acc_t_en <= '0';
			mux1_sel <= '0';--ACC_F
			mux2_sel <= '1';--ADD
			back_rdy <= '0';
			forward_rdy <= '1';
		ELSIF( state = th0 ) THEN-- Multiply<- ACC_F & ACC_B
			acc_f_reset0 <= '0';
			acc_f_reset1 <= '0';
			mult_reset <= '0';
			cnt_en <= '0';
			add_en <= '0';
			add_reset <= '0';
			add_ld_a <= '0';
			add_ld_b <= '0';
			mult_enable <= '1';
			acc_t_en <= '0';
			mux1_sel <= '0';-- ACC_F
			mux2_sel <= '0';-- ACC_B
			back_rdy <= '0';
			forward_rdy <= '0';
		ELSIF( state = th1 ) THEN-- ACC_T <- mult/2
			acc_f_reset0 <= '0';
			acc_f_reset1 <= '0';
			mult_reset <= '0';
			cnt_en <= '0';
			add_en <= '0';
			add_reset <= '0';
			add_ld_a <= '0';
			add_ld_b <= '0';
			mult_enable <= '0';
			acc_t_en <= '1';
			mux1_sel <= '0';-- ACC_F
			mux2_sel <= '0';-- ACC_B
			back_rdy <= '0';
			forward_rdy <= '0';
		ELSIF( state = bp0 ) THEN-- MULT <- ADD & ADD
			acc_f_reset0 <= '0';
			acc_f_reset1 <= '0';
			mult_reset <= '0';
			cnt_en <= '0';
			add_en <= '0';
			add_reset <= '0';
			add_ld_a <= '0';
			add_ld_b <= '0';
			mult_enable <= '1';
			acc_t_en <= '0';
			mux1_sel <= '1';-- ADD
			mux2_sel <= '1';-- ADD
			back_rdy <= '0';
			forward_rdy <= '0';
		ELSIF( state = bp1 ) THEN-- ACC_F <- (1 - x)
			acc_f_reset0 <= '0';
			acc_f_reset1 <= '1';
			mult_reset <= '0';
			cnt_en <= '0';
			add_en <= '0';
			add_reset <= '0';
			add_ld_a <= '0';
			add_ld_b <= '0';
			mult_enable <= '0';
			acc_t_en <= '0';
			mux1_sel <= '0';-- ACC_F
			mux2_sel <= '0';-- ACC_B
			back_rdy <= '0';
			forward_rdy <= '0';
		ELSIF( state = bp2 ) THEN-- MULT <- ACC_F & ACC_B
			acc_f_reset0 <= '0';
			acc_f_reset1 <= '0';
			mult_reset <= '0';
			cnt_en <= '0';
			add_en <= '0';
			add_reset <= '0';
			add_ld_a <= '0';
			add_ld_b <= '0';
			mult_enable <= '1';
			acc_t_en <= '0';
			mux1_sel <= '0';-- ACC_F
			mux2_sel <= '0';-- ACC_B
			back_rdy <= '0';
			forward_rdy <= '0';
		ELSIF( state = bp3) THEN -- MULT WAIT
			acc_f_reset0 <= '0';
			acc_f_reset1 <= '0';
			mult_reset <= '0';
			cnt_en <= '0';
			add_en <= '0';
			add_reset <= '0';
			add_ld_a <= '0';
			add_ld_b <= '0';
			mult_enable <= '0';
			acc_t_en <= '0';
			mux1_sel <= '0';-- ACC_F
			mux2_sel <= '0';-- ACC_B
			back_rdy <= '1';
			forward_rdy <= '0';
		ELSE -- Default to init stage
			acc_f_reset0 <= '1';
			acc_f_reset1 <= '0';
			mult_reset <= '1';
			cnt_en <= '0';
			add_en <= '0';
			add_reset <= '1';
			add_ld_a <= '0';
			add_ld_b <= '0';
			mult_enable <= '0';
			acc_t_en <= '0';
			mux1_sel <= '0';
			mux2_sel <= '0';
			back_rdy <= '0';
			forward_rdy <= '0';
		END IF;

	
END PROCESS controlSignals;
	

-- Bck_pred 
is_back_prop <= back_rdy AND backward; -- To signal pred for back prop
back_pred(0) <= (rp_pred(0) AND is_back_prop) OR broadcast;
back_pred(1) <= (rp_pred(1) AND is_back_prop) OR broadcast;
back_pred(2) <= (rp_pred(2) AND is_back_prop) OR broadcast;
back_pred(3) <= (rp_pred(3) AND is_back_prop) OR broadcast;

--fwd_succ
is_fwd <= foward AND forward_rdy;
fwd_succ(0) <= (sn_succ(0) AND is_fwd) OR broadcast;
fwd_succ(1) <= (sn_succ(1) AND is_fwd) OR broadcast;
fwd_succ(2) <= (sn_succ(2) AND is_fwd) OR broadcast;
fwd_succ(3) <= (sn_succ(3) AND is_fwd) OR broadcast;

-- Forward input MUX
WITH f_sel( 1 DOWNTO 0 ) SELECT
	acc_f_in <= x_pred_0 WHEN "00",
	x_pred_1 WHEN "01",
	x_pred_2 WHEN "10",
	x_pred_3 WHEN "11",
	x_pred_0 WHEN others;

-- Backward input MUX
WITH b_sel( 1 DOWNTO 0 ) SELECT
	acc_b_in <= b_succ_0 WHEN "00",
	b_succ_1 WHEN "01",
	b_succ_2 WHEN "10",
	b_succ_3 WHEN "11",
	b_succ_0 WHEN others;
	
--Multiply input MUX
--input ACC_F when foward
--input ADDout when done activating
--input ACC_F when updating threshold & backprop
WITH mux1_sel SELECT 
	mult_in <= acc_f_out WHEN '0',
	add_out WHEN '1',
	acc_f_out WHEN others;
	
	
--Multiply W input MUX
-- input addout when forward
-- input addout when done activating
-- input acc_b when updating threshold & backprop
WITH mux2_sel SELECT
	mult_w_in <= acc_b_out WHEN '0',
	add_out WHEN '1',
	acc_b_out WHEN others;
	
--Mutliply reset control
--update_and_nupdate <= NOT update_reg AND update;
--mult_reset <= sel_fwd_reset_m OR sel_bck_reset_m OR update_and_nupdate;
y<=mult_out;

WITH mult_out(19) SELECT
		acc_t_in<= ('0'& mult_out(19 DOWNTO 1)) WHEN '0',
		('1'& mult_out(19 DOWNTO 1)) WHEN '1',
		('0'& mult_out(19 DOWNTO 1)) WHEN others;

--debug<= acc_b_out;

end Behavioral;