--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : Multiplier                                                   ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Multiplier IS
   GENERIC ( NrOfCalcBits              : INTEGER;
             NrOfBits                  : INTEGER);
   PORT ( Cin                       : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          INP_A                     : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          INP_B                     : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          Mult_hi                   : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          Mult_lo                   : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
END Multiplier;

