--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : CMP_CMN                                                      ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF CMP_CMN IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT NOT_GATE_BUS
      GENERIC ( NrOfBits                  : INTEGER);
      PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT Multiplexer_bus_2
      GENERIC ( NrOfBits                  : INTEGER);
      PORT ( Enable                    : IN  std_logic;
             MuxIn_0                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             MuxIn_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Sel                       : IN  std_logic;
             MuxOut                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT FA_32
      PORT ( A                         : IN  std_logic_vector( 31 DOWNTO 0 );
             B                         : IN  std_logic_vector( 31 DOWNTO 0 );
             cin                       : IN  std_logic;
             Sum32                     : OUT std_logic_vector( 31 DOWNTO 0 );
             cout                      : OUT std_logic);
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_BUS_0                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_1                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_3                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_4                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_6                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_2                    : std_logic;
   SIGNAL s_LOGISIM_NET_5                    : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_NET_2                    <= Cin;
   s_LOGISIM_BUS_0(31 DOWNTO 0)       <= A;
   s_LOGISIM_BUS_3(31 DOWNTO 0)       <= B;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   cout                               <= s_LOGISIM_NET_5;
   Result                             <= s_LOGISIM_BUS_1(31 DOWNTO 0);

   -----------------------------------------------------------------------------
   -- Here all normal components are defined                                  --
   -----------------------------------------------------------------------------
   GATE_1 : NOT_GATE_BUS
      GENERIC MAP ( NrOfBits                           => 32)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_3(31 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_6(31 DOWNTO 0));

   MUX_1 : Multiplexer_bus_2
      GENERIC MAP ( NrOfBits                           => 32)
      PORT MAP ( Enable                             => '1',
                 MuxIn_0                            => s_LOGISIM_BUS_6(31 DOWNTO 0),
                 MuxIn_1                            => s_LOGISIM_BUS_3(31 DOWNTO 0),
                 MuxOut                             => s_LOGISIM_BUS_4(31 DOWNTO 0),
                 Sel                                => s_LOGISIM_NET_2);


   -----------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                       --
   -----------------------------------------------------------------------------
   FA_32_1 : FA_32
      PORT MAP ( A                                  => s_LOGISIM_BUS_0(31 DOWNTO 0),
                 B                                  => s_LOGISIM_BUS_4(31 DOWNTO 0),
                 Sum32                              => s_LOGISIM_BUS_1(31 DOWNTO 0),
                 cin                                => s_LOGISIM_NET_2,
                 cout                               => s_LOGISIM_NET_5);


END PlatformIndependent;
