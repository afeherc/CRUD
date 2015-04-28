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
public class UsuariRepetitException extends Exception {

    public UsuariRepetitException() {
    }
   
    /**
     *
     * @return missatge de l'error.
     */
    @Override
    public String getMessage(){
        return "Aquest usuari ja está registrat.";
    }
}
