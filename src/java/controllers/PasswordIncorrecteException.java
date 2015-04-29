/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers;

/**
 * Classes extessa d'excepció per quan el pasword és incorrecte.
 * @author Alejandro
 * @since 1.0
 * @version 1.0 29-04-2015
 */
public class PasswordIncorrecteException extends Exception {

    public PasswordIncorrecteException() {
    }
    /**
     * @return missatge de l'error.
     */
    @Override
    public String getMessage(){
        return "Password incorrecte!";
    }
}
