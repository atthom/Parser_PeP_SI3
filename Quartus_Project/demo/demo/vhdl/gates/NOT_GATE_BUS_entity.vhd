--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : NOT_GATE_BUS                                                 ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY NOT_GATE_BUS IS
   GENERIC ( NrOfBits                  : INTEGER);
   PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
END NOT_GATE_BUS;

