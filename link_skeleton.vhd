----------------------------------------------------------------------------------
-- Company: ECAL
-- Engineer: Urs Evora
-- 
-- Create Date:    18:08:01 03/04/2016 
-- Design Name: 	
-- Module Name:    link_skeleton - Behavioral 
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

entity link_skeleton is
generic (rand: STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"08000";
			pred: STD_LOGIC_VECTOR(3 DOWNTO 0):=X"3";
			succ: STD_LOGIC_VECTOR(3 DOWNTO 0):=X"3");
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
still_fwd: IN STD_LOGIC;

--Backwards Control Signals
bck_succ: IN STD_LOGIC_VECTOR( 3 DOWNTO 0); -- backward successors request signals
backward: IN STD_LOGIC; -- backward activation mode
update: IN STD_LOGIC; -- update weight control signal --------------------------------------------------------- Now a signal Update<=forward
--broadcast: IN STD_LOGIC; -- Broadcase connections

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
end link_skeleton;

architecture Behavioral of link_skeleton is

--SIGNAL update: STD_LOGIC; --------------------------------------------------------------Update<=forward rather than input

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

component d_reg is
  PORT (
    clk : IN STD_LOGIC;
    input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	 en : IN STD_LOGIC;
    clr : IN STD_LOGIC;
    output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
end component;

signal sel_fwd_en_m_reg :STD_LOGIC;
signal sel_bck_en_m_reg :STD_LOGIC;

SIGNAL rp_pred: STD_LOGIC_VECTOR(3 DOWNTO 0 ):= pred; -- Vector determining if pred connections exist
SIGNAL rn_succ: STD_LOGIC_VECTOR(3 DOWNTO 0 ):= succ; -- Vector determining if succ connections exist
--ACC_B
SIGNAL acc_b_out: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- output of acc_b
SIGNAL acc_b_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- input of accumulate B
SIGNAL acc_b_en: STD_LOGIC;
--ACC_F
SIGNAL acc_f_out: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- output of acc_f
SIGNAL acc_f_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- output of mux into ACC_F
SIGNAL acc_f_reset: STD_LOGIC;
SIGNAL acc_b_reset: STD_LOGIC;
--ACC_W
SIGNAL acc_w_out: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- output of acc_w
SIGNAL acc_w_in: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- input of acc_w
--Sel_fwd
SIGNAL f_sel: STD_LOGIC_VECTOR( 1 DOWNTO 0 ); -- Select signal for forward input MUX
SIGNAL sel_fwd_reset_m: STD_LOGIC;
SIGNAL sel_fwd_en_m: STD_LOGIC;
Signal sel_fwd_en_accf: STD_LOGIC;  
--Sel bck
SIGNAL sel_bck_en_m: STD_LOGIC;
SIGNAL sel_bck_reset_m: STD_LOGIC;
SIGNAL b_sel: STD_LOGIC_VECTOR( 1 DOWNTO 0 ); -- selection from select back
--Mult
SIGNAL mult_end: STD_LOGIC; -- Result when multiply is finished
SIGNAL mult_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- Input for multiplier
SIGNAL mult_w_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- Weight or acc_f input for mult
SIGNAL mult_enable: STD_LOGIC; -- result of ORing sel_fwd_en_in, update_reg, sel_bck_m
SIGNAL mult_reset: STD_LOGIC;
SIGNAL mult_out: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); 
--Other
SIGNAL is_back_prop: STD_LOGIC; -- Result of ANDing backwards and mult_end
SIGNAL update_reg: STD_LOGIC_VECTOR( 3 DOWNTO 0); -- stores input of update in register for synchronization
SIGNAL update_and_nupdate: STD_LOGIC; 
SIGNAL nupdate_and_update: STD_LOGIC; -- output of OR gate for mult reset
SIGNAL is_fwd: STD_LOGIC; -- Result of ANDING foward and end
SIGNAL muxw_sel: STD_LOGIC; -- Controls mux2
SIGNAL F_SEL_CLR: STD_LOGIC; 
SIGNAL B_SEL_CLR: STD_LOGIC; 
SIGNAL ACC_F_RST: STD_LOGIC; 
SIGNAL delay_foward: STD_LOGIC;
begin

F_SEL_CLR <= reset or backward or (still_fwd and (not rn_succ(0) or bck_succ(0)) and (not rn_succ(1) or bck_succ(1)) and (not rn_succ(2) or bck_succ(2)) and (not rn_succ(3) or bck_succ(3)));
B_SEL_CLR <= reset or foward;
ACC_F_RST <= reset or update or (still_fwd and (not rn_succ(0) or bck_succ(0)) and (not rn_succ(1) or bck_succ(1)) and (not rn_succ(2) or bck_succ(2)) and (not rn_succ(3) or bck_succ(3)));
acc_f_reset <= update_reg(0) or update OR reset;
acc_b_reset <= foward OR reset;
--port
U1: MULT 
	PORT MAP(reset=>mult_reset,clock=>clk,en=>mult_enable,Input=>mult_in,W=>mult_w_in,Output=>mult_out,ready=>mult_end);
U2: acc_f
	PORT MAP(clk=>clk , rst0=>acc_f_reset , rst1=>'0' , f_in=>acc_f_in , en=>sel_fwd_en_accf , init0=>x"00000" , init1=>x"00000" , f_out=>acc_f_out );
--U3: oneminusx PORT MAP(Input=>mult_out, Output=>omx_out);
U4: ACC_W 
	GENERIC MAP (rand => rand)
	PORT MAP(clk=>clk,write_w=>update_and_nupdate,mult_in=>acc_w_in,w_out=>acc_w_out);  
U5: acc_f --acc_b
	PORT MAP(clk=>clk , rst0=>acc_b_reset , rst1=>'0' , f_in=>acc_b_in , en=>acc_b_en , init0=>x"00000" , init1=>x"00000" , f_out=>acc_b_out );
--U6: COEFFS PORT MAP(degree=>degree,address=>acc_f_out,coeff=>in1);
--U7: CNT PORT MAP (clk=>clk ,enable=>cnt_en ,fin=>fin ,degree=>degree);
--U8: adder PORT MAP (clk=>clk,rst=>add_reset, en=>add_en, save_a=>add_ld_a, save_b=>add_ld_b, a=>in1, b=>mult_out, c=>add_out);
U9: SELECTOR 
	PORT MAP (clr=>F_SEL_CLR, clk=>clk, forward=>foward, r=>fwd_pred , reqs=>rp_pred, res_m=>sel_fwd_reset_m , en_m=>sel_fwd_en_m, en_a=>sel_fwd_en_accf, sel=>f_sel);				---FORWARD
U10:SELECTOR 
	PORT MAP (clr=>B_SEL_CLR, clk=>clk, forward=>backward, r=>bck_succ , reqs=>rn_succ, res_m=>sel_bck_reset_m , en_m=>sel_bck_en_m, en_a=>acc_b_en, sel=>b_sel);
--U11: link_bcast 
	--PORT MAP(clk=>clk, rst=>reset, en=>broadcast, p0=>fwd_pred(0), p1=>fwd_pred(1), p2=>fwd_pred(2), p3=>fwd_pred(3), p0_val=>rp_pred(0), p1_val=>rp_pred(1), p2_val=>rp_pred(2), p3_val=>rp_pred(3)); -- Forward
--U12: link_bcast 
--	PORT MAP(clk=>clk, rst=>reset, en=>broadcast, p0=>bck_succ(0), p1=>bck_succ(1), p2=>bck_succ(2), p3=>bck_succ(3), p0_val=>rn_succ(0), p1_val=>rn_succ(1), p2_val=>rn_succ(2), p3_val=>rn_succ(3)); -- Backward
update_regudr : d_reg
	PORT MAP(clk => clk, input(0)=>update, input(3 DOWNTO 1)=>"000", en=>'1', clr=>'0', output=>update_reg);

-- Bck_pred 
is_back_prop <= mult_end AND backward; -- To signal pred for back prop
back_pred(0) <= (rp_pred(0) AND is_back_prop AND mult_end AND sel_bck_en_m);
back_pred(1) <= (rp_pred(1) AND is_back_prop AND mult_end AND sel_bck_en_m);
back_pred(2) <= (rp_pred(2) AND is_back_prop AND mult_end AND sel_bck_en_m);
back_pred(3) <= (rp_pred(3) AND is_back_prop AND mult_end AND sel_bck_en_m);

--fwd_succ
is_fwd <= foward AND mult_end AND NOT delay_foward;
fwd_succ(0) <= (rn_succ(0) AND is_fwd);
fwd_succ(1) <= (rn_succ(1) AND is_fwd);
fwd_succ(2) <= (rn_succ(2) AND is_fwd);
fwd_succ(3) <= (rn_succ(3) AND is_fwd);

-- Forward input MUX
WITH f_sel( 1 DOWNTO 0 ) SELECT
	acc_f_in <= x_pred_0 WHEN "00",
	x_pred_1 WHEN "01",
	x_pred_2 WHEN "10",
	x_pred_3 WHEN "11",
	x_pred_0 WHEN others;
	--x"00000" WHEN others;

-- Backward input MUX
WITH b_sel( 1 DOWNTO 0 ) SELECT
	acc_b_in <= b_succ_0 WHEN "00",
	b_succ_1 WHEN "01",
	b_succ_2 WHEN "10",
	b_succ_3 WHEN "11",
	--x"00000" WHEN others;
	b_succ_0 WHEN others;
	
--Multiply input MUX
WITH backward SELECT
	mult_in <= acc_f_out WHEN '0',
	acc_b_out WHEN '1',
	acc_f_out WHEN others;
	
--Multiply enable control
	mult_enable <= sel_fwd_en_m_reg OR sel_bck_en_m_reg OR update_reg(0);--sel_fwd_en_m OR sel_bck_en_m OR update_reg(0);    5/13 oa
	
--Multiply W input MUX
muxw_sel <= foward NOR update;
WITH muxw_sel SELECT
	mult_w_in <= acc_w_out WHEN '0',
	acc_f_out WHEN '1',
	acc_w_out WHEN others;
	
--Mutliply reset control
update_and_nupdate <= update_reg(0) AND NOT update;
nupdate_and_update <= NOT update_reg(0) AND  update;
mult_reset <= sel_fwd_reset_m OR sel_bck_reset_m OR nupdate_and_update;
	
--Update register
--PROCESS(clk, update)
--	BEGIN
--	IF(clk'EVENT AND clk = '1') THEN
--		update_reg <= update;
--	END IF;
--END PROCESS;

-- ACC_W update value times learning rate
WITH mult_out(19) SELECT
		acc_w_in<= ('0'& mult_out(19 DOWNTO 1)) WHEN '0',
		('1'& mult_out(19 DOWNTO 1)) WHEN '1',
		('0'& mult_out(19 DOWNTO 1)) WHEN others;


PROCESS(clk, update_reg)
	BEGIN
	IF(clk'EVENT AND clk = '1' )THEN
		delay_foward<= update_and_nupdate;--update_reg(0);
	END IF;
END PROCESS;

process(clk, sel_fwd_en_m,sel_bck_en_m) begin--------------------5/13 oa
	if(clk'EVENT AND clk = '0')then                        --
		sel_fwd_en_m_reg<=sel_fwd_en_m;	--
		sel_bck_en_m_reg<=sel_bck_en_m;	--
	end if;																--
end process;	
y<=mult_out;





end Behavioral;