--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : ADC_SBC                                                      ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ADC_SBC IS
   PORT ( A                         : IN  std_logic_vector( 31 DOWNTO 0 );
          ADC_SBC_b21cb356          : IN  std_logic;
          B                         : IN  std_logic_vector( 31 DOWNTO 0 );
          Cin                       : IN  std_logic;
          Cout                      : OUT std_logic;
          Result                    : OUT std_logic_vector( 31 DOWNTO 0 ));
END ADC_SBC;

