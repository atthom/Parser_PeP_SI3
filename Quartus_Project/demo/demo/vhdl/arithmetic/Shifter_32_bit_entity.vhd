--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : Shifter_32_bit                                               ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Shifter_32_bit IS
   GENERIC ( ShifterMode               : INTEGER);
   PORT ( DataA                     : IN  std_logic_vector( 31 DOWNTO 0 );
          ShiftAmount               : IN  std_logic_vector( 4 DOWNTO 0 );
          Result                    : OUT std_logic_vector( 31 DOWNTO 0 ));
END Shifter_32_bit;

