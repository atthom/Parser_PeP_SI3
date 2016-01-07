--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : FA_1                                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF FA_1 IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT XOR_GATE_ONEHOT
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT AND_GATE
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT OR_GATE
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_NET_0                    : std_logic;
   SIGNAL s_LOGISIM_NET_1                    : std_logic;
   SIGNAL s_LOGISIM_NET_2                    : std_logic;
   SIGNAL s_LOGISIM_NET_3                    : std_logic;
   SIGNAL s_LOGISIM_NET_4                    : std_logic;
   SIGNAL s_LOGISIM_NET_5                    : std_logic;
   SIGNAL s_LOGISIM_NET_6                    : std_logic;
   SIGNAL s_LOGISIM_NET_7                    : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_NET_0                    <= A;
   s_LOGISIM_NET_1                    <= Ci;
   s_LOGISIM_NET_4                    <= B;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   S                                  <= s_LOGISIM_NET_6;
   Co                                 <= s_LOGISIM_NET_7;

   -----------------------------------------------------------------------------
   -- Here all normal components are defined                                  --
   -----------------------------------------------------------------------------
   GATE_1 : XOR_GATE_ONEHOT
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_0,
                 Input_2                            => s_LOGISIM_NET_4,
                 Result                             => s_LOGISIM_NET_5);

   GATE_2 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_0,
                 Input_2                            => s_LOGISIM_NET_4,
                 Result                             => s_LOGISIM_NET_2);

   GATE_3 : XOR_GATE_ONEHOT
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_5,
                 Input_2                            => s_LOGISIM_NET_1,
                 Result                             => s_LOGISIM_NET_6);

   GATE_4 : OR_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_2,
                 Input_2                            => s_LOGISIM_NET_3,
                 Result                             => s_LOGISIM_NET_7);

   GATE_5 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_1,
                 Input_2                            => s_LOGISIM_NET_5,
                 Result                             => s_LOGISIM_NET_3);


END PlatformIndependent;
