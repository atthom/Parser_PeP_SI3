--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : FA_4                                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF FA_4 IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT FA_1
      PORT ( A                         : IN  std_logic;
             B                         : IN  std_logic;
             Ci                        : IN  std_logic;
             Co                        : OUT std_logic;
             S                         : OUT std_logic);
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_BUS_2                    : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_3                    : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_8                    : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_0                    : std_logic;
   SIGNAL s_LOGISIM_NET_1                    : std_logic;
   SIGNAL s_LOGISIM_NET_4                    : std_logic;
   SIGNAL s_LOGISIM_NET_5                    : std_logic;
   SIGNAL s_LOGISIM_NET_6                    : std_logic;
   SIGNAL s_LOGISIM_NET_7                    : std_logic;
   SIGNAL s_LOGISIM_NET_9                    : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_BUS_2(3 DOWNTO 0)        <= A;
   s_LOGISIM_NET_1                    <= Cin;
   s_LOGISIM_BUS_8(3 DOWNTO 0)        <= B;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   Cout                               <= s_LOGISIM_NET_5;
   Sum                                <= s_LOGISIM_BUS_3(3 DOWNTO 0);

   -----------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                       --
   -----------------------------------------------------------------------------
   FA_1_1 : FA_1
      PORT MAP ( A                                  => s_LOGISIM_BUS_2(3),
                 B                                  => s_LOGISIM_BUS_8(3),
                 Ci                                 => s_LOGISIM_NET_0,
                 Co                                 => s_LOGISIM_NET_5,
                 S                                  => s_LOGISIM_BUS_3(3));

   FA_1_2 : FA_1
      PORT MAP ( A                                  => s_LOGISIM_BUS_2(1),
                 B                                  => s_LOGISIM_BUS_8(1),
                 Ci                                 => s_LOGISIM_NET_6,
                 Co                                 => s_LOGISIM_NET_4,
                 S                                  => s_LOGISIM_BUS_3(1));

   FA_1_3 : FA_1
      PORT MAP ( A                                  => s_LOGISIM_BUS_2(0),
                 B                                  => s_LOGISIM_BUS_8(0),
                 Ci                                 => s_LOGISIM_NET_1,
                 Co                                 => s_LOGISIM_NET_6,
                 S                                  => s_LOGISIM_BUS_3(0));

   FA_1_4 : FA_1
      PORT MAP ( A                                  => s_LOGISIM_BUS_2(2),
                 B                                  => s_LOGISIM_BUS_8(2),
                 Ci                                 => s_LOGISIM_NET_4,
                 Co                                 => s_LOGISIM_NET_0,
                 S                                  => s_LOGISIM_BUS_3(2));


END PlatformIndependent;
