--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : CMP_CMN                                                      ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY CMP_CMN IS
   PORT ( A                         : IN  std_logic_vector( 31 DOWNTO 0 );
          B                         : IN  std_logic_vector( 31 DOWNTO 0 );
          Cin                       : IN  std_logic;
          Result                    : OUT std_logic_vector( 31 DOWNTO 0 );
          cout                      : OUT std_logic);
END CMP_CMN;

