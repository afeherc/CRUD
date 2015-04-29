/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers;

/**
 * Classes extessa d'excepció per quan hi han usuaris repetits
 * @author Alejandro
 * @since 1.0
 * @version 1.0 29-04-2015
 */
public class UsuariRepetitException extends Exception {

    public UsuariRepetitException() {
    }
   
    /**
     * @return missatge de l'error.
     */
    @Override
    public String getMessage(){
        return "Aquest usuari ja está registrat.";
    }
}
