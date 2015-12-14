/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.unice.etu.pep_parser;

import java.util.BitSet;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author user
 */
public class ParserTest {

    Parser p;
    int zero = 0, un = 1, onze = 11, quarantedeux = 42;
    BitSet a, b, c, d;

    public ParserTest() {
    }

    @Before
    public void setUp() {

        p = new Parser();
        a = new BitSet();
        a.set(0, true);

        b = new BitSet();
        b.set(0, false);

        c = new BitSet();
        c.set(0, true);
        c.set(1, true);
        c.set(2, false);
        c.set(3, true);

        d = new BitSet();
        c.set(0, true);
        c.set(1, false);
        c.set(2, true);
        c.set(3, false);
        c.set(4, true);
        c.set(5, false);
    }

    /**
     * Test of main method, of class Parser.
     */
    @Test
    public void testMain() {
    }

    /**
     * Test of dec2bin method, of class Parser.
     */
    @Test
    public void testDec2bin() {
        assertEquals(a, p.dec2bin(zero));
        assertEquals(b, p.dec2bin(un));
        assertEquals(c, p.dec2bin(onze));
        assertEquals(d, p.dec2bin(quarantedeux));
    }

}
