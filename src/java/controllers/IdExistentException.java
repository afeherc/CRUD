package controllers;

/**
 * Classes extessa d'excepció per quan hi ha el mateix id a la bdd.
 * @author Alejandro
 * @since 1.0
 * @version 1.0 29-04-2015
 */
public class IdExistentException extends Exception {

    public IdExistentException() {
    }
    /**
     *
     * @return missatge de l'error.
     */
    @Override
    public String getMessage(){
        return "El id ja està fent-se servir!";
    }
}
