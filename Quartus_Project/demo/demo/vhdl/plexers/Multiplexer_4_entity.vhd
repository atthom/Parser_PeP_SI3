--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : Multiplexer_4                                                ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Multiplexer_4 IS
   PORT ( Enable                    : IN  std_logic;
          MuxIn_0                   : IN  std_logic;
          MuxIn_1                   : IN  std_logic;
          MuxIn_2                   : IN  std_logic;
          MuxIn_3                   : IN  std_logic;
          Sel                       : IN  std_logic_vector( 1 DOWNTO 0 );
          MuxOut                    : OUT std_logic);
END Multiplexer_4;

