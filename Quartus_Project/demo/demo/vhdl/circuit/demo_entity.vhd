--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : demo                                                         ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY demo IS
   PORT ( Input_bus_1               : IN  std_logic_vector( 6 DOWNTO 0 );
          Input_bus_2               : IN  std_logic_vector( 7 DOWNTO 0 );
          Input_bus_3               : IN  std_logic_vector( 3 DOWNTO 0 );
          Output_1                  : OUT std_logic;
          Output_bus_1              : OUT std_logic_vector( 7 DOWNTO 0 ));
END demo;

