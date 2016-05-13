library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SELECTOR is
PORT( clr, clk : std_logic;

forward: std_logic;
r, reqs: in std_logic_vector(3 downto 0);
en_a: out std_logic;
sel: out std_logic_vector(1 downto 0);
en_m : out std_logic;
res_m: out std_logic
);
end SELECTOR;

architecture Behavioral of SELECTOR is
signal r_reg, in_d, d, q, reqsorq, nqr, predand, last_d, selected: std_logic_vector(3 downto 0) := "0000";
signal pre_res_d, pre_en_m, pre_res, e, ep, r01or, r23or, trior: std_logic := '0';
signal res_d: std_logic := '0';
signal cd: STD_LOGIC_VECTOR(1 DOWNTO 0);
--signal en_m: std_logic;

component d_reg
  PORT (
    clk : IN STD_LOGIC;
    input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	 en : IN STD_LOGIC;
    clr : IN STD_LOGIC;
    output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
end component;


---signal en_m_reg :STD_LOGIC; --------------------5/12 o
begin

d_r : d_reg
	PORT MAP( clk=>clk, input=>in_d, en=>e, clr=>clr, output=>d);

--process (clr, clk) begin
--if (clk'EVENT AND clk = '1') then

in_d<= predand OR d;
pre_res <= reqsorq(0) AND reqsorq(1) AND reqsorq(2) AND reqsorq(3); --4 Input AND Gate
pre_res_d <= pre_res AND forward;

process(clk, clr, res_d, forward) begin
	if(clk'EVENT AND clk = '0')then
		case forward is
			--when '1' => pre_en_m <= pre_res_d;en_m <= pre_en_m;
			--when '0' =>pre_en_m <= '0';en_m <= '0';
			--when others=>pre_en_m <= '0';en_m <= '0';
			when '1' => en_m <= pre_res_d;--en_m <= pre_res_d;   --------------------5/12 oa
			when '0' => en_m <= '0';--en_m <= '0';	--------------------5/12 oa
			when others=>en_m<= '0';--en_m<= '0';
		end case;
--		if(forward = '1')then
--			pre_en_m <= pre_res_d;
--			en_m <= pre_en_m;
--		else
--			pre_en_m <= '0';
--			en_m <= '0';
--		end if;
	end if;
end process;
--------process(clk, clr, res_d, en_m_reg) begin--------------------5/12 oa
--------	if(clk'EVENT AND clk = '0')then                        --
--------	en_m<=en_m_reg;													--
--------	end if;																--
--------end process;	
------
--en_m <= res_d; --MULT Enable signal
--res_m <= res_d AND pre_res AND forward;
res_m <= '0';




r23or <= nqr(2) OR nqr(3);
r01or <= nqr(0) OR nqr(1) OR r23or; --3 Input OR gate 

predand(3) <= r23or AND (nqr(3) OR (NOT nqr(2) AND nqr(1)));
predand(2) <= NOT (nqr(3) OR (NOT nqr(2) AND nqr(1))) AND r23or;
predand(1) <= (nqr(3) OR (NOT nqr(2) AND nqr(1))) AND NOT r23or;
predand(0) <= NOT (nqr(3) OR (NOT nqr(2) AND nqr(1))) AND NOT r23or; --AND Gate preceding OR gate to d


process(clk, d)begin
	if(clk'EVENT AND clk='1')then
		last_d <= d;
	end if;
end process;

		nqr <= NOT d AND r; --AND Gate following each of the four flip flops
		reqsorq (0) <= NOT reqs(0) OR d(0);
		reqsorq (1) <= NOT reqs(1) OR d(1);
		reqsorq (2) <= NOT reqs(2) OR d(2);
		reqsorq (3) <= NOT reqs(3) OR d(3);
		
		selected(0)<= last_d(0) xor d(0);
		selected(1)<= last_d(1) xor d(1);
		selected(2)<= last_d(2) xor d(2);
		selected(3)<= last_d(3) xor d(3);



--Select signal
with selected select
	sel <= "00" when "0001",
	"01" when "0010",
	"10" when "0100",
	"11" when "1000",
	"00" when others;



--cd <= clr & e;

--process(clk, clr, cd) begin
--	if(clk'EVENT AND clk = '1')then
--		case cd is
--			when "00"=> d <=d;
--			when "01"=> d<=predand OR d;
--			when "10"=> d<= "0000";
--			when others=>d<=d;
--		end case;
--		if(clr = '1') then
--			d <= "0000";
--		else
--			IF( e = '1') then
--				d <= predand OR d;
--			else
--				d <= d;
--			end if;
--		end if;
--	end if;
--end process;

--q <= d;

e <= r01or AND forward; --ACC Enable signal
process(clk, clr)begin
	if(clk'event and clk = '1') then
		--ep<= e;
		en_a <= e;--p;
	end if;
end process;

--sel <= reqs;
--end if;
--end process;
--process(clr, clk) begin
--if (clr = '1') then
--r <= (OTHERS=>'0');
--elsif (clk'EVENT AND clk = '1') then
--r_reg <= r;
--end if;
--end process;
end Behavioral;