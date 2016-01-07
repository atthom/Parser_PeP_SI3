--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : ULA_simple                                                   ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF ULA_simple IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT Multiplexer_4
      PORT ( Enable                    : IN  std_logic;
             MuxIn_0                   : IN  std_logic;
             MuxIn_1                   : IN  std_logic;
             MuxIn_2                   : IN  std_logic;
             MuxIn_3                   : IN  std_logic;
             Sel                       : IN  std_logic_vector( 1 DOWNTO 0 );
             MuxOut                    : OUT std_logic);
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

   COMPONENT NOT_GATE_BUS
      GENERIC ( NrOfBits                  : INTEGER);
      PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT Shifter_32_bit
      GENERIC ( ShifterMode               : INTEGER);
      PORT ( DataA                     : IN  std_logic_vector( 31 DOWNTO 0 );
             ShiftAmount               : IN  std_logic_vector( 4 DOWNTO 0 );
             Result                    : OUT std_logic_vector( 31 DOWNTO 0 ));
   END COMPONENT;

   COMPONENT NOT_GATE
      PORT ( Input_1                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT OR_GATE_BUS
      GENERIC ( BubblesMask               : INTEGER;
                NrOfBits                  : INTEGER);
      PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Input_2                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT XOR_GATE_BUS_ONEHOT
      GENERIC ( BubblesMask               : INTEGER;
                NrOfBits                  : INTEGER);
      PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Input_2                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT Multiplexer_bus_16
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
   END COMPONENT;

   COMPONENT AND_GATE_BUS
      GENERIC ( BubblesMask               : INTEGER;
                NrOfBits                  : INTEGER);
      PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Input_2                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT Multiplier
      GENERIC ( NrOfCalcBits              : INTEGER;
                NrOfBits                  : INTEGER);
      PORT ( Cin                       : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             INP_A                     : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             INP_B                     : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Mult_hi                   : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Mult_lo                   : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT OR_GATE_31_INPUTS
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_10                  : IN  std_logic;
             Input_11                  : IN  std_logic;
             Input_12                  : IN  std_logic;
             Input_13                  : IN  std_logic;
             Input_14                  : IN  std_logic;
             Input_15                  : IN  std_logic;
             Input_16                  : IN  std_logic;
             Input_17                  : IN  std_logic;
             Input_18                  : IN  std_logic;
             Input_19                  : IN  std_logic;
             Input_2                   : IN  std_logic;
             Input_20                  : IN  std_logic;
             Input_21                  : IN  std_logic;
             Input_22                  : IN  std_logic;
             Input_23                  : IN  std_logic;
             Input_24                  : IN  std_logic;
             Input_25                  : IN  std_logic;
             Input_26                  : IN  std_logic;
             Input_27                  : IN  std_logic;
             Input_28                  : IN  std_logic;
             Input_29                  : IN  std_logic;
             Input_3                   : IN  std_logic;
             Input_30                  : IN  std_logic;
             Input_31                  : IN  std_logic;
             Input_4                   : IN  std_logic;
             Input_5                   : IN  std_logic;
             Input_6                   : IN  std_logic;
             Input_7                   : IN  std_logic;
             Input_8                   : IN  std_logic;
             Input_9                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT ADC_SBC
      PORT ( A                         : IN  std_logic_vector( 31 DOWNTO 0 );
             ADC_SBC_b21cb356          : IN  std_logic;
             B                         : IN  std_logic_vector( 31 DOWNTO 0 );
             Cin                       : IN  std_logic;
             Cout                      : OUT std_logic;
             Result                    : OUT std_logic_vector( 31 DOWNTO 0 ));
   END COMPONENT;

   COMPONENT CMP_CMN
      PORT ( A                         : IN  std_logic_vector( 31 DOWNTO 0 );
             B                         : IN  std_logic_vector( 31 DOWNTO 0 );
             Cin                       : IN  std_logic;
             Result                    : OUT std_logic_vector( 31 DOWNTO 0 );
             cout                      : OUT std_logic);
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_BUS_1                    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_10                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_11                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_15                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_17                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_18                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_19                   : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_21                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_23                   : std_logic_vector( 1 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_24                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_25                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_26                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_29                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_3                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_33                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_34                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_35                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_36                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_37                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_39                   : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_5                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_8                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_9                    : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_0                    : std_logic;
   SIGNAL s_LOGISIM_NET_12                   : std_logic;
   SIGNAL s_LOGISIM_NET_13                   : std_logic;
   SIGNAL s_LOGISIM_NET_14                   : std_logic;
   SIGNAL s_LOGISIM_NET_16                   : std_logic;
   SIGNAL s_LOGISIM_NET_2                    : std_logic;
   SIGNAL s_LOGISIM_NET_20                   : std_logic;
   SIGNAL s_LOGISIM_NET_22                   : std_logic;
   SIGNAL s_LOGISIM_NET_27                   : std_logic;
   SIGNAL s_LOGISIM_NET_28                   : std_logic;
   SIGNAL s_LOGISIM_NET_30                   : std_logic;
   SIGNAL s_LOGISIM_NET_31                   : std_logic;
   SIGNAL s_LOGISIM_NET_32                   : std_logic;
   SIGNAL s_LOGISIM_NET_38                   : std_logic;
   SIGNAL s_LOGISIM_NET_4                    : std_logic;
   SIGNAL s_LOGISIM_NET_6                    : std_logic;
   SIGNAL s_LOGISIM_NET_7                    : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_NET_13                   <= ADC_SBC1;
   s_LOGISIM_BUS_24(31 DOWNTO 0)      <= A;
   s_LOGISIM_NET_6                    <= cin;
   s_LOGISIM_BUS_19(3 DOWNTO 0)       <= opCode2;
   s_LOGISIM_BUS_1(4 DOWNTO 0)        <= shift;
   s_LOGISIM_BUS_23(1 DOWNTO 0)       <= opCode1;
   s_LOGISIM_BUS_39(31 DOWNTO 0)      <= B;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   Z                                  <= s_LOGISIM_NET_12;
   N                                  <= s_LOGISIM_BUS_33(31);
   C                                  <= s_LOGISIM_NET_30;
   res                                <= s_LOGISIM_BUS_33(31 DOWNTO 0);
   O                                  <= s_LOGISIM_NET_22;

   -----------------------------------------------------------------------------
   -- Here all in-lined components are defined                                --
   -----------------------------------------------------------------------------
   s_LOGISIM_NET_27 <= '1';

   s_LOGISIM_BUS_18(31 DOWNTO 0) <= std_logic_vector(to_unsigned(-1,32));


   -----------------------------------------------------------------------------
   -- Here all normal components are defined                                  --
   -----------------------------------------------------------------------------
   MUX_1 : Multiplexer_4
      PORT MAP ( Enable                             => '1',
                 MuxIn_0                            => s_LOGISIM_NET_32,
                 MuxIn_1                            => s_LOGISIM_NET_28,
                 MuxIn_2                            => s_LOGISIM_NET_20,
                 MuxIn_3                            => '0',
                 MuxOut                             => s_LOGISIM_NET_30,
                 Sel                                => s_LOGISIM_BUS_23(1 DOWNTO 0));

   GATE_1 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_38,
                 Input_2                            => s_LOGISIM_NET_16,
                 Result                             => s_LOGISIM_NET_0);

   GATE_2 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_7,
                 Input_2                            => s_LOGISIM_NET_14,
                 Result                             => s_LOGISIM_NET_2);

   GATE_3 : OR_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_2,
                 Input_2                            => s_LOGISIM_NET_4,
                 Result                             => s_LOGISIM_NET_22);

   GATE_4 : NOT_GATE_BUS
      GENERIC MAP ( NrOfBits                           => 32)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_39(31 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_26(31 DOWNTO 0));

   Shifter_1 : Shifter_32_bit
      GENERIC MAP ( ShifterMode                        => 3)
      PORT MAP ( DataA                              => s_LOGISIM_BUS_39(31 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_9(31 DOWNTO 0),
                 ShiftAmount                        => s_LOGISIM_BUS_1(4 DOWNTO 0));

   GATE_5 : NOT_GATE
      PORT MAP ( Input_1                            => s_LOGISIM_NET_31,
                 Result                             => s_LOGISIM_NET_12);

   Shifter_2 : Shifter_32_bit
      GENERIC MAP ( ShifterMode                        => 0)
      PORT MAP ( DataA                              => s_LOGISIM_BUS_39(31 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_5(31 DOWNTO 0),
                 ShiftAmount                        => s_LOGISIM_BUS_1(4 DOWNTO 0));

   GATE_6 : OR_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 32)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(31 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_39(31 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_35(31 DOWNTO 0));

   Shifter_3 : Shifter_32_bit
      GENERIC MAP ( ShifterMode                        => 1)
      PORT MAP ( DataA                              => s_LOGISIM_BUS_39(31 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_15(31 DOWNTO 0),
                 ShiftAmount                        => s_LOGISIM_BUS_1(4 DOWNTO 0));

   GATE_7 : XOR_GATE_BUS_ONEHOT
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 32)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(31 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_39(31 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_37(31 DOWNTO 0));

   GATE_8 : NOT_GATE
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_33(31),
                 Result                             => s_LOGISIM_NET_14);

   GATE_9 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(31),
                 Input_2                            => s_LOGISIM_BUS_39(31),
                 Result                             => s_LOGISIM_NET_7);

   GATE_10 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_0,
                 Input_2                            => s_LOGISIM_BUS_33(31),
                 Result                             => s_LOGISIM_NET_4);

   MUX_2 : Multiplexer_bus_16
      GENERIC MAP ( NrOfBits                           => 32)
      PORT MAP ( Enable                             => s_LOGISIM_NET_27,
                 MuxIn_0                            => s_LOGISIM_BUS_29(31 DOWNTO 0),
                 MuxIn_1                            => s_LOGISIM_BUS_8(31 DOWNTO 0),
                 MuxIn_10                           => s_LOGISIM_BUS_11(31 DOWNTO 0),
                 MuxIn_11                           => s_LOGISIM_BUS_11(31 DOWNTO 0),
                 MuxIn_12                           => s_LOGISIM_BUS_35(31 DOWNTO 0),
                 MuxIn_13                           => s_LOGISIM_BUS_10(31 DOWNTO 0),
                 MuxIn_14                           => s_LOGISIM_BUS_36(31 DOWNTO 0),
                 MuxIn_15                           => s_LOGISIM_BUS_17(31 DOWNTO 0),
                 MuxIn_2                            => s_LOGISIM_BUS_5(31 DOWNTO 0),
                 MuxIn_3                            => s_LOGISIM_BUS_34(31 DOWNTO 0),
                 MuxIn_4                            => s_LOGISIM_BUS_9(31 DOWNTO 0),
                 MuxIn_5                            => s_LOGISIM_BUS_3(31 DOWNTO 0),
                 MuxIn_6                            => s_LOGISIM_BUS_3(31 DOWNTO 0),
                 MuxIn_7                            => s_LOGISIM_BUS_15(31 DOWNTO 0),
                 MuxIn_8                            => s_LOGISIM_BUS_29(31 DOWNTO 0),
                 MuxIn_9                            => s_LOGISIM_BUS_25(31 DOWNTO 0),
                 MuxOut                             => s_LOGISIM_BUS_33(31 DOWNTO 0),
                 Sel                                => s_LOGISIM_BUS_19(3 DOWNTO 0));

   GATE_11 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 32)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(31 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_39(31 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_29(31 DOWNTO 0));

   Shifter_4 : Shifter_32_bit
      GENERIC MAP ( ShifterMode                        => 2)
      PORT MAP ( DataA                              => s_LOGISIM_BUS_39(31 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_34(31 DOWNTO 0),
                 ShiftAmount                        => s_LOGISIM_BUS_1(4 DOWNTO 0));

   GATE_12 : NOT_GATE
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(31),
                 Result                             => s_LOGISIM_NET_38);

   MULT_1 : Multiplier
      GENERIC MAP ( NrOfBits                           => 32,
                    NrOfCalcBits                       => 64)
      PORT MAP ( Cin                                => X"00000000",
                 INP_A                              => s_LOGISIM_BUS_24(31 DOWNTO 0),
                 INP_B                              => s_LOGISIM_BUS_39(31 DOWNTO 0),
                 Mult_hi                            => OPEN,
                 Mult_lo                            => s_LOGISIM_BUS_10(31 DOWNTO 0));

   GATE_13 : NOT_GATE
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_39(31),
                 Result                             => s_LOGISIM_NET_16);

   GATE_14 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 32)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(31 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_26(31 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_36(31 DOWNTO 0));

   GATE_15 : OR_GATE_31_INPUTS
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_33(0),
                 Input_10                           => s_LOGISIM_BUS_33(9),
                 Input_11                           => s_LOGISIM_BUS_33(10),
                 Input_12                           => s_LOGISIM_BUS_33(11),
                 Input_13                           => s_LOGISIM_BUS_33(12),
                 Input_14                           => s_LOGISIM_BUS_33(13),
                 Input_15                           => s_LOGISIM_BUS_33(14),
                 Input_16                           => s_LOGISIM_BUS_33(15),
                 Input_17                           => s_LOGISIM_BUS_33(16),
                 Input_18                           => s_LOGISIM_BUS_33(17),
                 Input_19                           => s_LOGISIM_BUS_33(18),
                 Input_2                            => s_LOGISIM_BUS_33(1),
                 Input_20                           => s_LOGISIM_BUS_33(19),
                 Input_21                           => s_LOGISIM_BUS_33(20),
                 Input_22                           => s_LOGISIM_BUS_33(21),
                 Input_23                           => s_LOGISIM_BUS_33(22),
                 Input_24                           => s_LOGISIM_BUS_33(23),
                 Input_25                           => s_LOGISIM_BUS_33(24),
                 Input_26                           => s_LOGISIM_BUS_33(25),
                 Input_27                           => s_LOGISIM_BUS_33(26),
                 Input_28                           => s_LOGISIM_BUS_33(27),
                 Input_29                           => s_LOGISIM_BUS_33(28),
                 Input_3                            => s_LOGISIM_BUS_33(2),
                 Input_30                           => s_LOGISIM_BUS_33(29),
                 Input_31                           => s_LOGISIM_BUS_33(30),
                 Input_4                            => s_LOGISIM_BUS_33(3),
                 Input_5                            => s_LOGISIM_BUS_33(4),
                 Input_6                            => s_LOGISIM_BUS_33(5),
                 Input_7                            => s_LOGISIM_BUS_33(6),
                 Input_8                            => s_LOGISIM_BUS_33(7),
                 Input_9                            => s_LOGISIM_BUS_33(8),
                 Result                             => s_LOGISIM_NET_31);


   -----------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                       --
   -----------------------------------------------------------------------------
   ADC_SBC_1 : ADC_SBC
      PORT MAP ( A                                  => s_LOGISIM_BUS_24(31 DOWNTO 0),
                 ADC_SBC_b21cb356                   => s_LOGISIM_NET_13,
                 B                                  => s_LOGISIM_BUS_39(31 DOWNTO 0),
                 Cin                                => s_LOGISIM_NET_6,
                 Cout                               => s_LOGISIM_NET_32,
                 Result                             => s_LOGISIM_BUS_21(31 DOWNTO 0));

   CMP_CMN_2 : CMP_CMN
      PORT MAP ( A                                  => s_LOGISIM_BUS_18(31 DOWNTO 0),
                 B                                  => s_LOGISIM_BUS_39(31 DOWNTO 0),
                 Cin                                => s_LOGISIM_NET_6,
                 Result                             => s_LOGISIM_BUS_25(31 DOWNTO 0),
                 cout                               => s_LOGISIM_NET_28);

   CMP_CMN_1 : CMP_CMN
      PORT MAP ( A                                  => s_LOGISIM_BUS_24(31 DOWNTO 0),
                 B                                  => s_LOGISIM_BUS_39(31 DOWNTO 0),
                 Cin                                => s_LOGISIM_NET_6,
                 Result                             => s_LOGISIM_BUS_11(31 DOWNTO 0),
                 cout                               => s_LOGISIM_NET_20);


END PlatformIndependent;
