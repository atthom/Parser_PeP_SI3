--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : Multiplexer_bus_16                                           ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Multiplexer_bus_16 IS
   GENERIC ( NrOfBits                  : INTEGER);
   PORT ( Enable                    : IN  std_logic;
          MuxIn_0                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_10                  : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_11                  : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_12                  : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_13                  : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_14                  : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_15                  : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_2                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_3                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_4                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_5                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_6                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_7                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_8                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_9                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          Sel                       : IN  std_logic_vector( 3 DOWNTO 0 );
          MuxOut                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
END Multiplexer_bus_16;

