----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:51:44 03/05/2018 
-- Design Name: 
-- Module Name:    bramka - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity parzystosc is
	port (
    we0 : in  std_logic;
    we1 : in  std_logic;
    we2 : in  std_logic;
    we3 : in  std_logic;
    we4 : in  std_logic;
    we5 : in  std_logic;
    we6 : in  std_logic;
    we7 : in  std_logic;
    --y : buffer std_logic;
    led7_seg : OUT  std_logic_vector(7 downto 0);
    led7_an  : OUT  std_logic_vector(3 downto 0)
	 );
 
end parzystosc;

architecture beh of parzystosc is
signal y : std_logic:= '0';
begin 
	y <= ( (we0 xor we1) xor (we2 xor we3) xor (we4 xor we5) xor (we6 xor we7) );
				  
  process (y)
  begin  
  
		if y = '1' 
		then
		   led7_an(3 DownTo 0) <= "0111";
			led7_seg(7 downto 0) <= "00000011";
		else  
		   led7_an(3 DownTo 0) <= "0111";
			led7_seg(7 downto 0) <= "01100001";
		end if;
end process;
 
end beh;

