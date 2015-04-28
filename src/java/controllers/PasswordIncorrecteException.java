/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers;

/**
 *
 * @author Alejandro
 */
public class PasswordIncorrecteException extends Exception {

    public PasswordIncorrecteException() {
    }
    /**
     *
     * @return missatge de l'error.
     */
    @Override
    public String getMessage(){
        return "Password incorrecte!";
    }
}
