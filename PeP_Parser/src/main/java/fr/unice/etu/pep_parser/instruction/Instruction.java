package fr.unice.etu.pep_parser.instruction;

/**
 * Created by Loïc on 05/01/2016.
 */
public class Instruction {

    private String OPCode;
    private int numberOfOperators;

    public Instruction(String aOPCode, int aNumberOfOperators){
        this.OPCode = aOPCode;
        this.numberOfOperators = aNumberOfOperators;
    }

    public String getOPCode() {
        return OPCode;
    }
    public int getNumberOfOperators() {
        return numberOfOperators;
    }

}
