--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : Multiplexer_bus_16                                           ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF Multiplexer_bus_16 IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------

BEGIN
   make_mux : PROCESS( Enable,
                       MuxIn_0,
                       MuxIn_1,
                       MuxIn_2,
                       MuxIn_3,
                       MuxIn_4,
                       MuxIn_5,
                       MuxIn_6,
                       MuxIn_7,
                       MuxIn_8,
                       MuxIn_9,
                       MuxIn_10,
                       MuxIn_11,
                       MuxIn_12,
                       MuxIn_13,
                       MuxIn_14,
                       MuxIn_15,
                       Sel )
   BEGIN
      IF (Enable = '0') THEN
         MuxOut <= (OTHERS => '0');
                        ELSE
         CASE (Sel) IS
            WHEN  "0000" => MuxOut <= MuxIn_0;
            WHEN  "0001" => MuxOut <= MuxIn_1;
            WHEN  "0010" => MuxOut <= MuxIn_2;
            WHEN  "0011" => MuxOut <= MuxIn_3;
            WHEN  "0100" => MuxOut <= MuxIn_4;
            WHEN  "0101" => MuxOut <= MuxIn_5;
            WHEN  "0110" => MuxOut <= MuxIn_6;
            WHEN  "0111" => MuxOut <= MuxIn_7;
            WHEN  "1000" => MuxOut <= MuxIn_8;
            WHEN  "1001" => MuxOut <= MuxIn_9;
            WHEN  "1010" => MuxOut <= MuxIn_10;
            WHEN  "1011" => MuxOut <= MuxIn_11;
            WHEN  "1100" => MuxOut <= MuxIn_12;
            WHEN  "1101" => MuxOut <= MuxIn_13;
            WHEN  "1110" => MuxOut <= MuxIn_14;
            WHEN OTHERS  => MuxOut <= MuxIn_15;
         END CASE;
      END IF;
   END PROCESS make_mux;
END PlatformIndependent;
