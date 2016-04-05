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
           p0 : in std_logic;
           p1 : in std_logic;
           p2 : in std_logic;
           p3 : in std_logic;
           p0_val : out std_logic;
           p1_val : out std_logic;
           p2_val : out std_logic;
           p3_val : out std_logic;
           request : out std_logic_vector(3 downto 0));
end link_bcast;

architecture Behavioral of link_bcast is
    signal req_cnt: std_logic_vector(3 downto 0);   --Port Request Counter
    signal p0_r: std_logic; --Registers for Ports 1 - 3
    signal p1_r: std_logic;
    signal p2_r: std_logic;
    signal p3_r: std_logic;
begin
    cnt: process(clk, rst)  -- Counter
    begin
        if (clk'event and clk =  '1') then      --Synchronous Clock
            if (rst = '1' and rst = '1') then   -- Reset State
                req_cnt <= "0000"; 
            elsif (req_cnt = "0100") then       --Loop Back to 0 when Counter = 4
                req_cnt <= "0000";
            else
                req_cnt <= req_cnt + 1;         --Increment Counter
            end if;
       end if;
    end process cnt;
    
    bcast: process(clk, rst, p0, p1, p2, p3)    --Broadcast Request
    begin
        if (clk'event and clk =  '1') then      --Synchronous Clock
            if (rst = '1' and rst = '1') then	--Reset State
                p0_r <= '0';
                p1_r <= '0';
                p2_r <= '0';
                p3_r <= '0';
            else
                case req_cnt is                 --Check Port Specified by Counter
                    when "0000" =>
                        if(p0 = '1') then
                            p0_r <= '1';
                        end if;
                    when "0001" =>
                        if(p1 = '1') then
                            p1_r <= '1';
                        end if;
                    when "0010" =>
                        if(p2 = '1') then
                            p2_r <= '1';
                        end if;
                    when "0100" =>
                        if(p3 = '1') then
                            p3_r <= '1';
                        end if;
                    when others =>
                end case;
            end if;
        end if;
    end process bcast;
    p0_val <= p0_r;    --Output Current Register Values
    p1_val <= p1_r;
    p2_val <= p2_r;
    p3_val <= p3_r;
    request <= req_cnt;   --Send Request
    
end Behavioral;
