--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : LogisimToplevelShell                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF LogisimToplevelShell IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT demo
      PORT ( Input_bus_1               : IN  std_logic_vector( 6 DOWNTO 0 );
             Input_bus_2               : IN  std_logic_vector( 7 DOWNTO 0 );
             Input_bus_3               : IN  std_logic_vector( 3 DOWNTO 0 );
             Output_1                  : OUT std_logic;
             Output_bus_1              : OUT std_logic_vector( 7 DOWNTO 0 ));
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_Input_bus_1                      : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_Input_bus_2                      : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_Input_bus_3                      : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_Output_1                         : std_logic;
   SIGNAL s_Output_bus_1                     : std_logic_vector( 7 DOWNTO 0 );

BEGIN
   -----------------------------------------------------------------------------
   -- Here all signal adaptations are performed                               --
   -----------------------------------------------------------------------------
   s_Input_bus_3(0) <= NOT FPGA_INPUT_PIN_0;
   s_Input_bus_3(1) <= NOT FPGA_INPUT_PIN_1;
   s_Input_bus_3(2) <= NOT FPGA_INPUT_PIN_2;
   s_Input_bus_3(3) <= NOT FPGA_INPUT_PIN_3;
   s_Input_bus_2(0) <= FPGA_INPUT_PIN_4;
   s_Input_bus_2(1) <= FPGA_INPUT_PIN_5;
   s_Input_bus_2(2) <= FPGA_INPUT_PIN_6;
   s_Input_bus_2(3) <= FPGA_INPUT_PIN_7;
   s_Input_bus_2(4) <= FPGA_INPUT_PIN_8;
   s_Input_bus_2(5) <= FPGA_INPUT_PIN_9;
   s_Input_bus_2(6) <= FPGA_INPUT_PIN_10;
   s_Input_bus_2(7) <= FPGA_INPUT_PIN_11;
   FPGA_OUTPUT_PIN_0 <= s_Output_1;
   FPGA_OUTPUT_PIN_1 <= s_Output_bus_1(0);
   FPGA_OUTPUT_PIN_2 <= s_Output_bus_1(1);
   FPGA_OUTPUT_PIN_3 <= s_Output_bus_1(2);
   FPGA_OUTPUT_PIN_4 <= s_Output_bus_1(3);
   FPGA_OUTPUT_PIN_5 <= s_Output_bus_1(4);
   FPGA_OUTPUT_PIN_6 <= s_Output_bus_1(5);
   FPGA_OUTPUT_PIN_7 <= s_Output_bus_1(6);
   FPGA_OUTPUT_PIN_8 <= s_Output_bus_1(7);
   s_Input_bus_1(0) <= FPGA_INPUT_PIN_12;
   s_Input_bus_1(1) <= FPGA_INPUT_PIN_13;
   s_Input_bus_1(2) <= FPGA_INPUT_PIN_14;
   s_Input_bus_1(3) <= FPGA_INPUT_PIN_15;
   s_Input_bus_1(4) <= FPGA_INPUT_PIN_16;
   s_Input_bus_1(5) <= FPGA_INPUT_PIN_17;
   s_Input_bus_1(6) <= FPGA_INPUT_PIN_18;
   -----------------------------------------------------------------------------
   -- Here all inlined adaptations are performed                              --
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- Here the toplevel component is connected                                --
   -----------------------------------------------------------------------------
   demo_0 : demo
      PORT MAP ( Input_bus_1                        => s_Input_bus_1,
                 Input_bus_2                        => s_Input_bus_2,
                 Input_bus_3                        => s_Input_bus_3,
                 Output_1                           => s_Output_1,
                 Output_bus_1                       => s_Output_bus_1);

END PlatformIndependent;
