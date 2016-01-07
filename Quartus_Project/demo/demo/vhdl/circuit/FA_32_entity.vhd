--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : FA_32                                                        ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY FA_32 IS
   PORT ( A                         : IN  std_logic_vector( 31 DOWNTO 0 );
          B                         : IN  std_logic_vector( 31 DOWNTO 0 );
          cin                       : IN  std_logic;
          Sum32                     : OUT std_logic_vector( 31 DOWNTO 0 );
          cout                      : OUT std_logic);
END FA_32;

