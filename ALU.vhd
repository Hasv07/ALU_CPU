----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:45:49 05/10/2019 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
entity ALU is
PORT(
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         dataout : OUT  std_logic_vector(31 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic
        );
end ALU;
ARCHITECTURE Behavioral OF ALU IS
signal L: std_logic;
signal cin1 : std_logic_vector(31 downto 0);
signal cout1 : std_logic;
signal dataout1: std_logic_vector(31 downto 0);




BEGIN
    cin1(0) <= aluop(2);
	 bit1: entity work.one_bt_Alui port map(
	 cin1 => cin1(0),
    cout => cin1(1) ,
	 result => dataout1(0) ,
	 sel => aluop(3 downto 0),
	 A => data1(0),
	 B => data2(0),
	 less => L

	);
	bit2: entity work.one_bt_Alui port map(
	 cin1 => cin1(1),
    cout => cin1(2) ,
	 result => dataout1(1) ,
	 sel => aluop(3 downto 0),
	 A => data1(1),
	 B => data2(1),
	 less => '0'

	);
	bit3: entity work.one_bt_Alui port map(
	 cin1 => cin1(2),
    cout => cin1(3) ,
	 result => dataout1(2) ,
	 sel => aluop(3 downto 0),
	 A => data1(2),
	 B => data2(2),
	 less => '0'

	);
	bit4: entity work.one_bt_Alui port map(
	 cin1 => cin1(3),
    cout => cin1(4) ,
	 result => dataout1(3) ,
	 sel => aluop(3 downto 0),
	 A => data1(3),
	 B => data2(3),
	 less => '0'

	);
	bit5: entity work.one_bt_Alui port map(
	 cin1 => cin1(4),
    cout => cin1(5) ,
	 result => dataout1(4) ,
	 sel => aluop(3 downto 0),
	 A => data1(4),
	 B => data2(4),
	 less => '0'

	);
	bit6: entity work.one_bt_Alui port map(
	 cin1 => cin1(5),
    cout => cin1(6) ,
	 result => dataout1(5) ,
	 sel => aluop(3 downto 0),
	 A => data1(5),
	 B => data2(5),
	 less => '0'

	);
	bit7: entity work.one_bt_Alui port map(
	 cin1 => cin1(6),
    cout => cin1(7) ,
	 result => dataout1(6) ,
	 sel => aluop(3 downto 0),
	 A => data1(6),
	 B => data2(6),
	 less => '0'

	);
	bit8: entity work.one_bt_Alui port map(
	 cin1 => cin1(7),
    cout => cin1(8) ,
	 result => dataout1(7) ,
	 sel => aluop(3 downto 0),
	 A => data1(7),
	 B => data2(7),
	 less => '0'

	);
	bit9: entity work.one_bt_Alui port map(
	 cin1 => cin1(8),
    cout => cin1(9) ,
	 result => dataout1(8) ,
	 sel => aluop(3 downto 0),
	 A => data1(8),
	 B => data2(8),
	 less => '0'

	);
	bit10: entity work.one_bt_Alui port map(
	 cin1 => cin1(9),
    cout => cin1(10) ,
	 result => dataout1(9) ,
	 sel => aluop(3 downto 0),
	 A => data1(9),
	 B => data2(9),
	 less => '0'

	);
	bit11: entity work.one_bt_Alui port map(
	 cin1 => cin1(10),
    cout => cin1(11) ,
	 result => dataout1(10) ,
	 sel => aluop(3 downto 0),
	 A => data1(10),
	 B => data2(10),
	 less => '0'

	);
	bit12: entity work.one_bt_Alui port map(
	 cin1 => cin1(11),
    cout => cin1(12),
	 result => dataout1(11) ,
	 sel => aluop(3 downto 0),
	 A => data1(11),
	 B => data2(11),
	 less => '0'

	);
	bit13: entity work.one_bt_Alui port map(
	 cin1 => cin1(12),
    cout => cin1(13) ,
	 result => dataout1(12) ,
	 sel => aluop(3 downto 0),
	 A => data1(12),
	 B => data2(12),
	 less => '0'

	);
	bit14: entity work.one_bt_Alui port map(
	 cin1 => cin1(13),
    cout => cin1(14) ,
	 result => dataout1(13) ,
	 sel => aluop(3 downto 0),
	 A => data1(13),
	 B => data2(13),
	 less => '0'

	);
	bit15: entity work.one_bt_Alui port map(
	 cin1 => cin1(14),
    cout => cin1(15) ,
	 result => dataout1(14) ,
	 sel => aluop(3 downto 0),
	 A => data1(14),
	 B => data2(14),
	 less => '0'

	);
	bit16: entity work.one_bt_Alui port map(
	 cin1 => cin1(15),
    cout => cin1(16) ,
	 result => dataout1(15) ,
	 sel => aluop(3 downto 0),
	 A => data1(15),
	 B => data2(15),
	 less => '0'

	);
	bit17: entity work.one_bt_Alui port map(
	 cin1 => cin1(16),
    cout => cin1(17) ,
	 result => dataout1(16) ,
	 sel => aluop(3 downto 0),
	 A => data1(16),
	 B => data2(16),
	 less => '0'

	);
	bit18: entity work.one_bt_Alui port map(
	 cin1 => cin1(17),
    cout => cin1(18) ,
	 result => dataout1(17) ,
	 sel => aluop(3 downto 0),
	 A => data1(17),
	 B => data2(17),
	 less => '0'

	);
	bit19: entity work.one_bt_Alui port map(
	 cin1 => cin1(18),
    cout => cin1(19) ,
	 result => dataout1(18) ,
	 sel => aluop(3 downto 0),
	 A => data1(18),
	 B => data2(18),
	 less => '0'

	);
	bit20: entity work.one_bt_Alui port map(
	 cin1 => cin1(19),
    cout => cin1(20),
	 result => dataout1(19),
	 sel => aluop(3 downto 0),
	 A => data1(19),
	 B => data2(19),
	 less => '0'

	);
	bit21: entity work.one_bt_Alui port map(
	 cin1 => cin1(20),
    cout => cin1(21),
	 result => dataout1(20) ,
	 sel => aluop(3 downto 0),
	 A => data1(20),
	 B => data2(20),
	 less => '0'

	);
	bit22: entity work.one_bt_Alui port map(
	 cin1 => cin1(21),
    cout => cin1(22) ,
	 result => dataout1(21) ,
	 sel => aluop(3 downto 0),
	 A => data1(21),
	 B => data2(21),
	 less => '0'

	);
	bit23: entity work.one_bt_Alui port map(
	 cin1 => cin1(22),
    cout => cin1(23) ,
	 result => dataout1(22) ,
	 sel => aluop(3 downto 0),
	 A => data1(22),
	 B => data2(22),
	 less => '0'

	);
	bit24: entity work.one_bt_Alui port map(
	 cin1 => cin1(23),
    cout => cin1(24) ,
	 result => dataout1(23) ,
	 sel => aluop(3 downto 0),
	 A => data1(23),
	 B => data2(23),
	 less => '0'

	);
	bit25: entity work.one_bt_Alui port map(
	 cin1 => cin1(24),
    cout => cin1(25) ,
	 result => dataout1(24) ,
	 sel => aluop(3 downto 0),
	 A => data1(24),
	 B => data2(24),
	 less => '0'

	);
	bit26: entity work.one_bt_Alui port map(
	 cin1 => cin1(25),
    cout => cin1(26),
	 result => dataout1(25) ,
	 sel => aluop(3 downto 0),
	 A => data1(25),
	 B => data2(25),
	 less => '0'

	);
	bit27: entity work.one_bt_Alui port map(
	 cin1 => cin1(26),
    cout => cin1(27),
	 result => dataout1(26) ,
	 sel => aluop(3 downto 0),
	 A => data1(26),
	 B => data2(26),
	 less => '0'

	);
	bit28: entity work.one_bt_Alui port map(
	 cin1 => cin1(27),
    cout => cin1(28) ,
	 result => dataout1(27) ,
	 sel => aluop(3 downto 0),
	 A => data1(27),
	 B => data2(27),
	 less => '0'

	);
	bit29: entity work.one_bt_Alui port map(
	 cin1 => cin1(28),
    cout => cin1(29) ,
	 result => dataout1(28) ,
	 sel => aluop(3 downto 0),
	 A => data1(28),
	 B => data2(28),
	 less => '0'

	);
	bit30: entity work.one_bt_Alui port map(
	 cin1 => cin1(29),
    cout => cin1(30),
	 result => dataout1(29) ,
	 sel => aluop(3 downto 0),
	 A => data1(29),
	 B => data2(29),
	 less => '0'

	);
	bit31: entity work.one_bt_Alui port map(
	 cin1 => cin1(30),
    cout => cin1(31) ,
	 result => dataout1(30) ,
	 sel => aluop(3 downto 0),
	 A => data1(30),
	 B => data2(30),
	 less => '0'

	);
	bit32: entity work.Bit_32_Alu port map(
	 cin1 => cin1(31),
	 cout => cout1,
    result => dataout1(31) ,
	 sel => aluop(3 downto 0),
	 A => data1(31),
	 B => data2(31),
	 less => '0',
	 oflag => oflag,
	 set => L
	 

	);
	dataout <=dataout1;
	cflag <= cout1;
   zflag <= not( dataout1(0) or dataout1(1) or dataout1(2) or dataout1(3) or dataout1(4) or dataout1(5) or dataout1(6) or dataout1(7) or dataout1(8) or dataout1(9) or dataout1(10) or dataout1(11) or dataout1(12) or dataout1(13) or dataout1(14) or dataout1(15) or dataout1(16) or dataout1(17) or dataout1(18) or dataout1(19) or dataout1(20) or dataout1(21) or dataout1(22) or dataout1(23) or dataout1(24) or dataout1(25) or dataout1(26) or dataout1(27) or dataout1(28) or dataout1(29) or dataout1(30) or dataout1(31) );    


	
	
	

END Behavioral;