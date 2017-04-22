// Number Guess Game
// Written by Jason Hunter <jasonh@kasoftware.com>, CTO, K&A Software
// Copyright 1999, K&A Software, distributed by Sun with permission

package num;

import java.util.*;

/**
 * Bean de adivinar número.
 */ 
public class NumberGuessBean {

	/**
	 * Respuesta.
	 */
  int answer;
  
  /**
   * Éxito.
   */ 
  boolean success;
  
    /**
   * Pista.
   */
  String hint;
  
  /**
   * Número de intentos.
   */
  int numGuesses;


	/**
	 * Constructor.
	 */
  public NumberGuessBean() {
    reset();
  }


	/**
	 * Juzgar el intento.
	 *
	 * @param guess número introducido por el usuario
	 */
  public void setGuess(String guess) {
  	
    numGuesses++;
    int g;
    try {
      g = Integer.parseInt(guess);
    }
    catch (NumberFormatException e) {
      g = -1;
    }
    if (g == answer) {
      success = true;
    }
    else if (g == -1) {
      hint = "un n&uacute;mero la pr&oacute;xima vez";
    }
    else if (g < answer) {
      hint = "mayor";
    }
    else if (g > answer) {
      hint = "menor";
    }
  }

	/**
	 * Retorna el estado del juego.
	 */ 
  public boolean getSuccess() {
    return success;
  }
  	
  	/**
  	 * Pista para el usuario.
  	 */ 
  public String getHint() {
    return "" + hint;
  }

	/**
	 * Número de intentos.
	 */ 
  public int getNumGuesses() {
    return numGuesses;
  }


	/**
	 * Resetear el valor del número a adivinar.
	 */ 
  public void reset() {
    answer = Math.abs(new Random().nextInt() % 100) + 1;
    success = false;
    numGuesses = 0;
  }
}
