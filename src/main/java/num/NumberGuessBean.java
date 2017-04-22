// Number Guess Game
// Written by Jason Hunter <jasonh@kasoftware.com>, CTO, K&A Software
// Copyright 1999, K&A Software, distributed by Sun with permission

package num;

import java.util.*;

/**
 * Bean de adivinar n�mero.
 */ 
public class NumberGuessBean {

	/**
	 * Respuesta.
	 */
  int answer;
  
  /**
   * �xito.
   */ 
  boolean success;
  
    /**
   * Pista.
   */
  String hint;
  
  /**
   * N�mero de intentos.
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
	 * @param guess n�mero introducido por el usuario
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
	 * N�mero de intentos.
	 */ 
  public int getNumGuesses() {
    return numGuesses;
  }


	/**
	 * Resetear el valor del n�mero a adivinar.
	 */ 
  public void reset() {
    answer = Math.abs(new Random().nextInt() % 100) + 1;
    success = false;
    numGuesses = 0;
  }
}
