--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : OR_GATE_31_INPUTS                                            ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF OR_GATE_31_INPUTS IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_real_input_1                     : std_logic;
   SIGNAL s_real_input_10                    : std_logic;
   SIGNAL s_real_input_11                    : std_logic;
   SIGNAL s_real_input_12                    : std_logic;
   SIGNAL s_real_input_13                    : std_logic;
   SIGNAL s_real_input_14                    : std_logic;
   SIGNAL s_real_input_15                    : std_logic;
   SIGNAL s_real_input_16                    : std_logic;
   SIGNAL s_real_input_17                    : std_logic;
   SIGNAL s_real_input_18                    : std_logic;
   SIGNAL s_real_input_19                    : std_logic;
   SIGNAL s_real_input_2                     : std_logic;
   SIGNAL s_real_input_20                    : std_logic;
   SIGNAL s_real_input_21                    : std_logic;
   SIGNAL s_real_input_22                    : std_logic;
   SIGNAL s_real_input_23                    : std_logic;
   SIGNAL s_real_input_24                    : std_logic;
   SIGNAL s_real_input_25                    : std_logic;
   SIGNAL s_real_input_26                    : std_logic;
   SIGNAL s_real_input_27                    : std_logic;
   SIGNAL s_real_input_28                    : std_logic;
   SIGNAL s_real_input_29                    : std_logic;
   SIGNAL s_real_input_3                     : std_logic;
   SIGNAL s_real_input_30                    : std_logic;
   SIGNAL s_real_input_31                    : std_logic;
   SIGNAL s_real_input_4                     : std_logic;
   SIGNAL s_real_input_5                     : std_logic;
   SIGNAL s_real_input_6                     : std_logic;
   SIGNAL s_real_input_7                     : std_logic;
   SIGNAL s_real_input_8                     : std_logic;
   SIGNAL s_real_input_9                     : std_logic;
   SIGNAL s_signal_invert_mask               : std_logic_vector( 30 DOWNTO 0 );

BEGIN

   -----------------------------------------------------------------------------
   -- Here the bubbles are processed                                          --
   -----------------------------------------------------------------------------
   s_signal_invert_mask <= std_logic_vector(to_unsigned(BubblesMask,31));
   s_real_input_1   <= NOT( Input_1 )
                          WHEN s_signal_invert_mask(0) = '1' ELSE
                       Input_1;
   s_real_input_2   <= NOT( Input_2 )
                          WHEN s_signal_invert_mask(1) = '1' ELSE
                       Input_2;
   s_real_input_3   <= NOT( Input_3 )
                          WHEN s_signal_invert_mask(2) = '1' ELSE
                       Input_3;
   s_real_input_4   <= NOT( Input_4 )
                          WHEN s_signal_invert_mask(3) = '1' ELSE
                       Input_4;
   s_real_input_5   <= NOT( Input_5 )
                          WHEN s_signal_invert_mask(4) = '1' ELSE
                       Input_5;
   s_real_input_6   <= NOT( Input_6 )
                          WHEN s_signal_invert_mask(5) = '1' ELSE
                       Input_6;
   s_real_input_7   <= NOT( Input_7 )
                          WHEN s_signal_invert_mask(6) = '1' ELSE
                       Input_7;
   s_real_input_8   <= NOT( Input_8 )
                          WHEN s_signal_invert_mask(7) = '1' ELSE
                       Input_8;
   s_real_input_9   <= NOT( Input_9 )
                          WHEN s_signal_invert_mask(8) = '1' ELSE
                       Input_9;
   s_real_input_10   <= NOT( Input_10 )
                          WHEN s_signal_invert_mask(9) = '1' ELSE
                       Input_10;
   s_real_input_11  <= NOT( Input_11 )
                          WHEN s_signal_invert_mask(10) = '1' ELSE
                       Input_11;
   s_real_input_12  <= NOT( Input_12 )
                          WHEN s_signal_invert_mask(11) = '1' ELSE
                       Input_12;
   s_real_input_13  <= NOT( Input_13 )
                          WHEN s_signal_invert_mask(12) = '1' ELSE
                       Input_13;
   s_real_input_14  <= NOT( Input_14 )
                          WHEN s_signal_invert_mask(13) = '1' ELSE
                       Input_14;
   s_real_input_15  <= NOT( Input_15 )
                          WHEN s_signal_invert_mask(14) = '1' ELSE
                       Input_15;
   s_real_input_16  <= NOT( Input_16 )
                          WHEN s_signal_invert_mask(15) = '1' ELSE
                       Input_16;
   s_real_input_17  <= NOT( Input_17 )
                          WHEN s_signal_invert_mask(16) = '1' ELSE
                       Input_17;
   s_real_input_18  <= NOT( Input_18 )
                          WHEN s_signal_invert_mask(17) = '1' ELSE
                       Input_18;
   s_real_input_19  <= NOT( Input_19 )
                          WHEN s_signal_invert_mask(18) = '1' ELSE
                       Input_19;
   s_real_input_20  <= NOT( Input_20 )
                          WHEN s_signal_invert_mask(19) = '1' ELSE
                       Input_20;
   s_real_input_21  <= NOT( Input_21 )
                          WHEN s_signal_invert_mask(20) = '1' ELSE
                       Input_21;
   s_real_input_22  <= NOT( Input_22 )
                          WHEN s_signal_invert_mask(21) = '1' ELSE
                       Input_22;
   s_real_input_23  <= NOT( Input_23 )
                          WHEN s_signal_invert_mask(22) = '1' ELSE
                       Input_23;
   s_real_input_24  <= NOT( Input_24 )
                          WHEN s_signal_invert_mask(23) = '1' ELSE
                       Input_24;
   s_real_input_25  <= NOT( Input_25 )
                          WHEN s_signal_invert_mask(24) = '1' ELSE
                       Input_25;
   s_real_input_26  <= NOT( Input_26 )
                          WHEN s_signal_invert_mask(25) = '1' ELSE
                       Input_26;
   s_real_input_27  <= NOT( Input_27 )
                          WHEN s_signal_invert_mask(26) = '1' ELSE
                       Input_27;
   s_real_input_28  <= NOT( Input_28 )
                          WHEN s_signal_invert_mask(27) = '1' ELSE
                       Input_28;
   s_real_input_29  <= NOT( Input_29 )
                          WHEN s_signal_invert_mask(28) = '1' ELSE
                       Input_29;
   s_real_input_30  <= NOT( Input_30 )
                          WHEN s_signal_invert_mask(29) = '1' ELSE
                       Input_30;
   s_real_input_31  <= NOT( Input_31 )
                          WHEN s_signal_invert_mask(30) = '1' ELSE
                       Input_31;

   -----------------------------------------------------------------------------
   -- Here the functionality is defined                                       --
   -----------------------------------------------------------------------------
   Result <= s_real_input_1 OR
             s_real_input_2 OR
             s_real_input_3 OR
             s_real_input_4 OR
             s_real_input_5 OR
             s_real_input_6 OR
             s_real_input_7 OR
             s_real_input_8 OR
             s_real_input_9 OR
             s_real_input_10 OR
             s_real_input_11 OR
             s_real_input_12 OR
             s_real_input_13 OR
             s_real_input_14 OR
             s_real_input_15 OR
             s_real_input_16 OR
             s_real_input_17 OR
             s_real_input_18 OR
             s_real_input_19 OR
             s_real_input_20 OR
             s_real_input_21 OR
             s_real_input_22 OR
             s_real_input_23 OR
             s_real_input_24 OR
             s_real_input_25 OR
             s_real_input_26 OR
             s_real_input_27 OR
             s_real_input_28 OR
             s_real_input_29 OR
             s_real_input_30 OR
             s_real_input_31;

END PlatformIndependent;
