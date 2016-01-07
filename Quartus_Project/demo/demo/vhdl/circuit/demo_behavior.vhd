--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : demo                                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF demo IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT OR_GATE
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT ULA_simple
      PORT ( A                         : IN  std_logic_vector( 31 DOWNTO 0 );
             ADC_SBC1                  : IN  std_logic;
             B                         : IN  std_logic_vector( 31 DOWNTO 0 );
             cin                       : IN  std_logic;
             opCode1                   : IN  std_logic_vector( 1 DOWNTO 0 );
             opCode2                   : IN  std_logic_vector( 3 DOWNTO 0 );
             shift                     : IN  std_logic_vector( 4 DOWNTO 0 );
             C                         : OUT std_logic;
             N                         : OUT std_logic;
             O                         : OUT std_logic;
             Z                         : OUT std_logic;
             res                       : OUT std_logic_vector( 31 DOWNTO 0 ));
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_BUS_1                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_14                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_3                    : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_4                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_5                    : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_0                    : std_logic;
   SIGNAL s_LOGISIM_NET_10                   : std_logic;
   SIGNAL s_LOGISIM_NET_11                   : std_logic;
   SIGNAL s_LOGISIM_NET_12                   : std_logic;
   SIGNAL s_LOGISIM_NET_13                   : std_logic;
   SIGNAL s_LOGISIM_NET_2                    : std_logic;
   SIGNAL s_LOGISIM_NET_6                    : std_logic;
   SIGNAL s_LOGISIM_NET_7                    : std_logic;
   SIGNAL s_LOGISIM_NET_8                    : std_logic;
   SIGNAL s_LOGISIM_NET_9                    : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all wiring is defined                                              --
   -----------------------------------------------------------------------------
   s_LOGISIM_NET_7                    <= s_LOGISIM_BUS_3(2);
   s_LOGISIM_BUS_1(3)                 <= s_LOGISIM_NET_7;
   s_LOGISIM_NET_8                    <= s_LOGISIM_BUS_3(4);
   s_LOGISIM_BUS_1(5)                 <= s_LOGISIM_NET_8;
   s_LOGISIM_NET_9                    <= s_LOGISIM_BUS_3(5);
   s_LOGISIM_BUS_1(6)                 <= s_LOGISIM_NET_9;
   s_LOGISIM_NET_10                   <= s_LOGISIM_BUS_3(3);
   s_LOGISIM_BUS_1(4)                 <= s_LOGISIM_NET_10;
   s_LOGISIM_NET_11                   <= s_LOGISIM_BUS_3(0);
   s_LOGISIM_BUS_1(1)                 <= s_LOGISIM_NET_11;
   s_LOGISIM_NET_12                   <= s_LOGISIM_BUS_3(1);
   s_LOGISIM_BUS_1(2)                 <= s_LOGISIM_NET_12;
   s_LOGISIM_NET_13                   <= s_LOGISIM_BUS_3(6);
   s_LOGISIM_BUS_1(7)                 <= s_LOGISIM_NET_13;

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_BUS_4(7 DOWNTO 0)        <= Input_bus_2;
   s_LOGISIM_BUS_3(6 DOWNTO 0)        <= Input_bus_1;
   s_LOGISIM_BUS_5(3 DOWNTO 0)        <= Input_bus_3;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   Output_bus_1                       <= s_LOGISIM_BUS_14(7 DOWNTO 0);
   Output_1                           <= s_LOGISIM_NET_6;

   -----------------------------------------------------------------------------
   -- Here all in-lined components are defined                                --
   -----------------------------------------------------------------------------
   s_LOGISIM_BUS_1(0) <= '1';


   -----------------------------------------------------------------------------
   -- Here all normal components are defined                                  --
   -----------------------------------------------------------------------------
   GATE_1 : OR_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_2,
                 Input_2                            => s_LOGISIM_NET_0,
                 Result                             => s_LOGISIM_NET_6);


   -----------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                       --
   -----------------------------------------------------------------------------
   ULA_simple_1 : ULA_simple
      PORT MAP ( A                                  => s_LOGISIM_BUS_1(31 DOWNTO 0),
                 ADC_SBC1                           => '0',
                 B                                  => s_LOGISIM_BUS_4(31 DOWNTO 0),
                 C                                  => s_LOGISIM_NET_2,
                 N                                  => OPEN,
                 O                                  => OPEN,
                 Z                                  => s_LOGISIM_NET_0,
                 cin                                => '0',
                 opCode1                            => "00",
                 opCode2                            => s_LOGISIM_BUS_5(3 DOWNTO 0),
                 res                                => s_LOGISIM_BUS_14(31 DOWNTO 0),
                 shift                              => "0"&X"0");


END PlatformIndependent;
