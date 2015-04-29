package controllers;

/**
 * Classes extessa d'excepció per quan hi han usuaris no existents a la bdd.
 * @author Alejandro
 * @since 1.0
 * @version 1.0 29-04-2015
 */
public class UsuariInexistentException extends Exception {

    public UsuariInexistentException() {
    }
    /**
     * @return missatge de l'error.
     */
    @Override
    public String getMessage(){
        return "El nom d'usuari és incorrecte!";
    }
}
