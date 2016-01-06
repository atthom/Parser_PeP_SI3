package fr.unice.etu.pep_parser.parsing;

import fr.unice.etu.pep_parser.instruction.InstructionLabelNeededType;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

/**
 * @author Loïc
 */
public class Parser {

    private String filePath;
    private List<String> instructions;

    public Parser(String aFilePath) throws FileNotFoundException, IOException{
        String currentLine;
        BufferedReader aBufferedReader = new BufferedReader(new FileReader(aFilePath));
        while ((currentLine = aBufferedReader.readLine()) != null){
            instructions.add(parseLine(currentLine));
        }
    }

    /**
     * This method is private, because I will use it only in this method.
     * It just return the numeric value for a specify register (i.e: if the register name is RD3, we return the numerical number 3)
     * @param theRegisterFullName
     * @return
     */
    private int getRegisterValue(String theRegisterFullName){
        return Character.getNumericValue(theRegisterFullName.charAt(1));
    }

    private int getImmediateValue(String theImmediateFullName){
        return Integer.parseInt(theImmediateFullName.substring(1, theImmediateFullName.length()));
    }
}
