--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : FA_32                                                        ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF FA_32 IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT FA_16
      PORT ( A                         : IN  std_logic_vector( 15 DOWNTO 0 );
             B                         : IN  std_logic_vector( 15 DOWNTO 0 );
             Cin                       : IN  std_logic;
             Cout                      : OUT std_logic;
             Sum                       : OUT std_logic_vector( 15 DOWNTO 0 ));
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_BUS_0                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_1                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_5                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_2                    : std_logic;
   SIGNAL s_LOGISIM_NET_3                    : std_logic;
   SIGNAL s_LOGISIM_NET_4                    : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_BUS_5(31 DOWNTO 0)       <= B;
   s_LOGISIM_BUS_1(31 DOWNTO 0)       <= A;
   s_LOGISIM_NET_3                    <= cin;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   Sum32                              <= s_LOGISIM_BUS_0(31 DOWNTO 0);
   cout                               <= s_LOGISIM_NET_4;

   -----------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                       --
   -----------------------------------------------------------------------------
   FA_16_2 : FA_16
      PORT MAP ( A                                  => s_LOGISIM_BUS_1(31 DOWNTO 16),
                 B                                  => s_LOGISIM_BUS_5(31 DOWNTO 16),
                 Cin                                => s_LOGISIM_NET_2,
                 Cout                               => s_LOGISIM_NET_4,
                 Sum                                => s_LOGISIM_BUS_0(31 DOWNTO 16));

   FA_16_1 : FA_16
      PORT MAP ( A                                  => s_LOGISIM_BUS_1(15 DOWNTO 0),
                 B                                  => s_LOGISIM_BUS_5(15 DOWNTO 0),
                 Cin                                => s_LOGISIM_NET_3,
                 Cout                               => s_LOGISIM_NET_2,
                 Sum                                => s_LOGISIM_BUS_0(15 DOWNTO 0));


END PlatformIndependent;
