--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : FA_4                                                         ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY FA_4 IS
   PORT ( A                         : IN  std_logic_vector( 3 DOWNTO 0 );
          B                         : IN  std_logic_vector( 3 DOWNTO 0 );
          Cin                       : IN  std_logic;
          Cout                      : OUT std_logic;
          Sum                       : OUT std_logic_vector( 3 DOWNTO 0 ));
END FA_4;

