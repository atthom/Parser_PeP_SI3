/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.unice.etu.pep_parser;

import java.util.BitSet;
import java.util.HashMap;
import java.util.Scanner;

/**
 *
 * @author user
 */
public class Parser {

    public void codes() {
        HashMap<String, Integer> opcode = new HashMap<>();
        HashMap<String, Integer> function = new HashMap<>();

        opcode.put("MOVS", 1);
        opcode.put("MOV", 1);
        opcode.put("ADDS", 1);
        opcode.put("ADD", 1);

        opcode.put("ADR", 1);
        opcode.put("SBCS", 1);
        opcode.put("SUBS", 1);
        opcode.put("SUB", 1);
        opcode.put("RSBS", 1);
        opcode.put("MULS", 1);
        opcode.put("CMP", 1);
        opcode.put("CMN", 1);
// opcode.put("LSLS", 1);
//  opcode.put("LSRS", 1);
//  opcode.put("ASLS", 1);
//  opcode.put("RORS", 1);
//  
//    opcode.put("LDR", 1);
    
        function.put("ANDS", 1);
        function.put("EORS", 1);
        function.put("ORRS", 1);
        function.put("BICS", 1);
//         opcodes = {
//  'ffo':1,
//  'zb':2,
//  'bc':3,
//  'addi':4,
//  'andi':5,
//  'ori':6,
//  'jal':7,
//  'j':8,
//  'jr':9,
//  'beq':10,
//  'bne':11,
//  'sw':12,
//  'lui':13,
//  'lw':14,
//  'disp':15,
//}

//functs = {
//  'and':0,
//  'or':1,
//  'slt':2,
//  'sllv':3,
//  'srlv':4,
//  'srav':5,
//  'add':6,
//  'sub':7,
//}
    }

    public static void main(String[] args) {

        String input;
        String output;

        System.out.println("Nom du fichier assembleur à traiter  : ");
        Scanner sc = new Scanner(System.in);
        input = sc.nextLine();

        System.out.println("Nom du fichier binaire :");
        output = sc.nextLine();
    }

    public BitSet dec2bin(int a) {
        BitSet bit_array = new BitSet(16);
        int index = 1;
        while (a > 0) {

            bit_array.set(index++, a % 2);
            a = a / 2;
        }
        return bit_array;
    }
}

// read file
// write file
// check opcode1
// check opcode2

