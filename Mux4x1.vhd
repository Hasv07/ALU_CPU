----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:02:15 05/10/2019 
-- Design Name: 
-- Module Name:    Mux4x1 - Behavioral 
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

entity Mux4x1 is
    Port ( res00 : in  STD_LOGIC;
           res01 : in  STD_LOGIC;
           res10 : in  STD_LOGIC;
           res11 : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           result : out  STD_LOGIC);
end Mux4x1;

architecture Behavioral of Mux4x1 is

begin
result <= res00 WHEN sel="00" ELSE
res01 WHEN sel="01" ELSE
res10 WHEN sel="10" ELSE
res11 WHEN sel="11";

end Behavioral;

