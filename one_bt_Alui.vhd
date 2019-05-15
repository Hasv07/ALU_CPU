----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:16:22 05/10/2019 
-- Design Name: 
-- Module Name:    one_bt_Alui - Behavioral 
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


entity one_bt_Alui is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           less : in  STD_LOGIC;
           cin1 : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           result : out  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (3 downto 0));
end one_bt_Alui;

architecture Behavioral of one_bt_Alui is
   signal notB: STD_LOGIC;
	signal notA: STD_LOGIC;

   signal resA: STD_LOGIC;

	signal resB: STD_LOGIC;

	

	signal AandB: STD_LOGIC;

	signal AorB: STD_LOGIC;

	

	signal sum: STD_LOGIC;

begin
	notA <= (not A);
	notB <= (not B);

	



	Mux1: entity work.Mux2x1 port map(

		res0 		=> A,

		res1 		=> notA,

		sel 		=> sel(3),

		result 	=> resA

	);



	Mux2: entity work.Mux2x1 port map(

		res0 		=> B,

		res1 		=> notB,

		sel 		=> sel(2),

		result 	=> resB

	);
	i_FAdder2: entity work.FULLAdder port map(

		A 		=> resA,

		B 		=> resB,

		cin 		=> cin1,

		cout => cout,

		s 	=> sum

	);
	AandB <= resA and resB;
	AorB <= resA or resB;
   Mux3: entity work.Mux4x1 port map(

		res00 		=> AandB,

		res01 		=> AorB,

		res10 		=> sum,

		res11 		=> less,

		sel 		=> sel(1 downto 0),

		result 	=> result

	);

end Behavioral;

