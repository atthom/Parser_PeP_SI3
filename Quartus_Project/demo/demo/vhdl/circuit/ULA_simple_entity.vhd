--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : ULA_simple                                                   ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ULA_simple IS
   PORT ( A                         : IN  std_logic_vector( 31 DOWNTO 0 );
          ADC_SBC1                  : IN  std_logic;
          B                         : IN  std_logic_vector( 31 DOWNTO 0 );
          cin                       : IN  std_logic;
          opCode1                   : IN  std_logic_vector( 1 DOWNTO 0 );
          opCode2                   : IN  std_logic_vector( 3 DOWNTO 0 );
          shift                     : IN  std_logic_vector( 4 DOWNTO 0 );
          C                         : OUT std_logic;
          N                         : OUT std_logic;
          O                         : OUT std_logic;
          Z                         : OUT std_logic;
          res                       : OUT std_logic_vector( 31 DOWNTO 0 ));
END ULA_simple;

