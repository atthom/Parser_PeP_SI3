package fr.unice.etu.pep_parser.instruction;

/**
 * @author Loïc
 * This class (ENUM) represent all the specified command we will have to implement in our processor.
 * So we have 16 operations in 'data processing instructions' and 6 in 'shift(immediate), add, substract, move and compare encoding.
 */
public enum InstructionLabelNeededType {

    // Here we have all data processing instructions that we have to implement in the processor ARMv7
    AND(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 0),
    EOR(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 1),
    LSL(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 2),
    LSR(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 3),
    ASR(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 4),
    ADC(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 5),
    SBC(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 6),
    ROR(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 7),
    TST(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 8),
    RSB(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 9),
    CMP(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 10),
    CMN(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 11),
    ORR(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 12),
    MUL(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 13),
    BIC(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 14),
    MVN(InstructionSyntaxNeededType.OPCODE10_RM3_RDN3, 15);

    private InstructionSyntaxNeededType syntaxUsed;
    private int OPCodeInDecimal;

    InstructionLabelNeededType(InstructionSyntaxNeededType aLabel, int theEquivalentForOPCode){
        this.syntaxUsed = aLabel;
        this.OPCodeInDecimal = theEquivalentForOPCode;
    }

    public InstructionSyntaxNeededType getSyntaxUsed() {
        return syntaxUsed;
    }
    public int getOPCodeInDecimal() {
        return OPCodeInDecimal;
    }

}
