package fr.unice.etu.pep_parser;

import java.io.*;

public class ParserAssembleur {

  public ParserAssembleur(String source) {
 
    try {
      BufferedReader buff = new BufferedReader(new FileReader(source));
      try {
        String line;
        while ((line = buff.readLine()) != null) {
          ParserRead(line);
        }
      }
      finally {
        buff.close();
      }
    } 
    catch (IOException ioe) {
      System.out.println("Erreur --" + ioe.toString());
    }
  }
 
  public void ParserRead(String src) {
    System.out.println(src);
    System.out.println();
  }

  public static void main(String [] argv) {
    ParserAssembleur ass = new ParserAssembleur("test.txt");
  }
}
