--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:56:56 05/16/2021
-- Design Name:   
-- Module Name:   D:/xilinx/vivadoo/vivadodev/comparator/comparatortb.vhd
-- Project Name:  comparator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY comparatortb IS
END comparatortb;
 
ARCHITECTURE behavior OF comparatortb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         B : IN  std_logic_vector(2 downto 0);
         CLK : IN  std_logic;
         C : OUT  std_logic;
         D : OUT  std_logic;
         EQUAL : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(2 downto 0) := (others => '0');
   signal B : std_logic_vector(2 downto 0) := (others => '0');
   signal CLK : std_logic := '0';

 	--Outputs
   signal C : std_logic;
   signal D : std_logic;
   signal EQUAL : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator PORT MAP (
          A => A,
          B => B,
          CLK => CLK,
          C => C,
          D => D,
          EQUAL => EQUAL
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
A<="000";
B<="000";
wait for 10 ns;
A<="111";
B<="000";
wait for 10 ns;
A<="000";
B<="111";
wait for 10 ns;
A<="011";
B<="000";
wait for 10 ns;
A<="000";
B<="011";
wait for 10 ns;
A<="111";
B<="111";
wait for 10 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
