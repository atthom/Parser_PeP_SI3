--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : ADC_SBC                                                      ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF ADC_SBC IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT Multiplexer_2
      PORT ( Enable                    : IN  std_logic;
             MuxIn_0                   : IN  std_logic;
             MuxIn_1                   : IN  std_logic;
             Sel                       : IN  std_logic;
             MuxOut                    : OUT std_logic);
   END COMPONENT;

   COMPONENT Multiplexer_bus_2
      GENERIC ( NrOfBits                  : INTEGER);
      PORT ( Enable                    : IN  std_logic;
             MuxIn_0                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             MuxIn_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Sel                       : IN  std_logic;
             MuxOut                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT NOT_GATE_BUS
      GENERIC ( NrOfBits                  : INTEGER);
      PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT NOT_GATE
      PORT ( Input_1                   : IN  std_logic;
             Result                    : OUT std_logic);
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
   SIGNAL s_LOGISIM_BUS_1                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_3                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_5                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_8                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_9                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_0                    : std_logic;
   SIGNAL s_LOGISIM_NET_2                    : std_logic;
   SIGNAL s_LOGISIM_NET_4                    : std_logic;
   SIGNAL s_LOGISIM_NET_6                    : std_logic;
   SIGNAL s_LOGISIM_NET_7                    : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_NET_7                    <= ADC_SBC_b21cb356;
   s_LOGISIM_BUS_3(31 DOWNTO 0)       <= B;
   s_LOGISIM_NET_2                    <= Cin;
   s_LOGISIM_BUS_5(31 DOWNTO 0)       <= A;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   Cout                               <= s_LOGISIM_NET_6;
   Result                             <= s_LOGISIM_BUS_1(31 DOWNTO 0);

   -----------------------------------------------------------------------------
   -- Here all normal components are defined                                  --
   -----------------------------------------------------------------------------
   MUX_1 : Multiplexer_2
      PORT MAP ( Enable                             => s_LOGISIM_NET_4,
                 MuxIn_0                            => s_LOGISIM_NET_2,
                 MuxIn_1                            => s_LOGISIM_NET_4,
                 MuxOut                             => s_LOGISIM_NET_0,
                 Sel                                => s_LOGISIM_NET_7);

   MUX_2 : Multiplexer_bus_2
      GENERIC MAP ( NrOfBits                           => 32)
      PORT MAP ( Enable                             => s_LOGISIM_NET_2,
                 MuxIn_0                            => s_LOGISIM_BUS_8(31 DOWNTO 0),
                 MuxIn_1                            => s_LOGISIM_BUS_3(31 DOWNTO 0),
                 MuxOut                             => s_LOGISIM_BUS_9(31 DOWNTO 0),
                 Sel                                => s_LOGISIM_NET_2);

   GATE_1 : NOT_GATE_BUS
      GENERIC MAP ( NrOfBits                           => 32)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_3(31 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_8(31 DOWNTO 0));

   GATE_2 : NOT_GATE
      PORT MAP ( Input_1                            => s_LOGISIM_NET_2,
                 Result                             => s_LOGISIM_NET_4);


   -----------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                       --
   -----------------------------------------------------------------------------
   FA_32_1 : FA_32
      PORT MAP ( A                                  => s_LOGISIM_BUS_5(31 DOWNTO 0),
                 B                                  => s_LOGISIM_BUS_9(31 DOWNTO 0),
                 Sum32                              => s_LOGISIM_BUS_1(31 DOWNTO 0),
                 cin                                => s_LOGISIM_NET_0,
                 cout                               => s_LOGISIM_NET_6);


END PlatformIndependent;
