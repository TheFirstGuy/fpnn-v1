----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2016 11:31:14 PM
-- Design Name: 
-- Module Name: link_bcast - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity link_bcast is
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
end link_bcast;

architecture Behavioral of link_bcast is
    signal req_cnt: std_logic_vector(2 downto 0);   --Port Request Counter
    signal p0_r: std_logic := '0'; --Registers for Ports 1 - 3
    signal p1_r: std_logic := '0';
    signal p2_r: std_logic := '0';
    signal p3_r: std_logic := '0';
	 signal locked: std_logic := '0';
begin
--    cnt: process(clk, rst)  -- Counter
--    begin
--        if (clk'event and clk =  '1') then      --Synchronous Clock
--            if (rst = '1') then   -- Reset State
--                req_cnt <= "000"; 
--				else
--					if (req_cnt = "011") then       --Loop Back to 0 when Counter = 4
--						 req_cnt <= "000";
--					else
--						 if (en = '1') then
--							  req_cnt <= req_cnt + 1;         --Increment Counter
--						 else
--							  req_cnt <= req_cnt;
--						 end if;
--					end if;
--				end if;
--			else
--				req_cnt <= req_cnt;
--       end if;
--    end process cnt;
    process(clk, rst, en )
	 begin
		if(clk'event and clk = '0') then
			if( rst = '1' ) then
				locked <= '0';
			else
				if( en = '1' )then
					locked <= '1';
				else
					locked <= locked;
				end if;
			end if;
		end if;
	end process;
	 
    bcast: process(clk, rst, en, req_cnt, p0, p1, p2, p3, p0_r, p1_r, p2_r, p3_r, locked)    --Broadcast Request
    begin
        if (clk'event and clk =  '1') then      --Synchronous Clock
            if (rst = '1') then	--Reset State
                p0_r <= '0';
                p1_r <= '0';
                p2_r <= '0';
                p3_r <= '0';
            elsif( rst = '0') then
                if( en = '1' ) then
						if( locked = '0' ) then
							p0_r <= p0;
							p1_r <= p1;
							p2_r <= p2;
							p3_r <= p3;
						 else
							p0_r <= p0_r;
							p1_r <= p1_r;
							p2_r <= p2_r;
							p3_r <= p3_r;
						 end if;
					 end if;
				else
					p0_r <= p0_r;
					p1_r <= p1_r;
					p2_r <= p2_r;
					p3_r <= p3_r; 
			   end if;
		  else
				p0_r <= p0_r;
				p1_r <= p1_r;
				p2_r <= p2_r;
				p3_r <= p3_r;
        end if;
    end process bcast;
    p0_val <= p0_r;    --Output Current Register Values
    p1_val <= p1_r;
    p2_val <= p2_r;
    p3_val <= p3_r;
    
end Behavioral;
