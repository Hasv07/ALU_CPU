----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:45:47 05/10/2019 
-- Design Name: 
-- Module Name:    Mux2X1 - Behavioral 
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

entity Mux2X1 is
    Port ( res0 : in  STD_LOGIC;
           res1 : in  STD_LOGIC;
           result : out  STD_LOGIC;
           sel : in  STD_LOGIC);
end Mux2X1;

architecture Behavioral of Mux2X1 is

begin
result <= res0 when sel='0' else
          res1  ;

end Behavioral;

