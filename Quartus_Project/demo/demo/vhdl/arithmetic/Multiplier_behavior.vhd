--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : Multiplier                                                   ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF Multiplier IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_extended_Cin                     : std_logic_vector( (NrOfCalcBits-1) DOWNTO 0 );
   SIGNAL s_mult_result                      : std_logic_vector( (NrOfCalcBits-1) DOWNTO 0 );
   SIGNAL s_new_result                       : std_logic_vector( (NrOfCalcBits-1) DOWNTO 0 );

BEGIN
   s_mult_result <= std_logic_vector(unsigned(INP_A)*unsigned(INP_B));
   s_extended_Cin(NrOfCalcBits-1 DOWNTO NrOfBits) <= (OTHERS => '0');
   s_extended_Cin(NrOfBits-1 DOWNTO 0) <= Cin;
   s_new_result  <= std_logic_vector(unsigned(s_mult_result) + unsigned(s_extended_Cin));
   Mult_hi       <= s_new_result(NrOfCalcBits-1 DOWNTO NrOfBits);
   Mult_lo       <= s_new_result(NrOfBits-1 DOWNTO 0);
END PlatformIndependent;
