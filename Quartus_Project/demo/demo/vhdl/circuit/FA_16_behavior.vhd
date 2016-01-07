--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : FA_16                                                        ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF FA_16 IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT FA_4
      PORT ( A                         : IN  std_logic_vector( 3 DOWNTO 0 );
             B                         : IN  std_logic_vector( 3 DOWNTO 0 );
             Cin                       : IN  std_logic;
             Cout                      : OUT std_logic;
             Sum                       : OUT std_logic_vector( 3 DOWNTO 0 ));
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_BUS_2                    : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_5                    : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_7                    : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_0                    : std_logic;
   SIGNAL s_LOGISIM_NET_1                    : std_logic;
   SIGNAL s_LOGISIM_NET_3                    : std_logic;
   SIGNAL s_LOGISIM_NET_4                    : std_logic;
   SIGNAL s_LOGISIM_NET_6                    : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_BUS_7(15 DOWNTO 0)       <= B;
   s_LOGISIM_NET_1                    <= Cin;
   s_LOGISIM_BUS_5(15 DOWNTO 0)       <= A;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   Sum                                <= s_LOGISIM_BUS_2(15 DOWNTO 0);
   Cout                               <= s_LOGISIM_NET_4;

   -----------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                       --
   -----------------------------------------------------------------------------
   FA_4_2 : FA_4
      PORT MAP ( A                                  => s_LOGISIM_BUS_5(3 DOWNTO 0),
                 B                                  => s_LOGISIM_BUS_7(3 DOWNTO 0),
                 Cin                                => s_LOGISIM_NET_1,
                 Cout                               => s_LOGISIM_NET_0,
                 Sum                                => s_LOGISIM_BUS_2(3 DOWNTO 0));

   FA_4_4 : FA_4
      PORT MAP ( A                                  => s_LOGISIM_BUS_5(11 DOWNTO 8),
                 B                                  => s_LOGISIM_BUS_7(11 DOWNTO 8),
                 Cin                                => s_LOGISIM_NET_6,
                 Cout                               => s_LOGISIM_NET_3,
                 Sum                                => s_LOGISIM_BUS_2(11 DOWNTO 8));

   FA_4_3 : FA_4
      PORT MAP ( A                                  => s_LOGISIM_BUS_5(7 DOWNTO 4),
                 B                                  => s_LOGISIM_BUS_7(7 DOWNTO 4),
                 Cin                                => s_LOGISIM_NET_0,
                 Cout                               => s_LOGISIM_NET_6,
                 Sum                                => s_LOGISIM_BUS_2(7 DOWNTO 4));

   FA_4_1 : FA_4
      PORT MAP ( A                                  => s_LOGISIM_BUS_5(15 DOWNTO 12),
                 B                                  => s_LOGISIM_BUS_7(15 DOWNTO 12),
                 Cin                                => s_LOGISIM_NET_3,
                 Cout                               => s_LOGISIM_NET_4,
                 Sum                                => s_LOGISIM_BUS_2(15 DOWNTO 12));


END PlatformIndependent;
