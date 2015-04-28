package controllers;

/**
 *
 * @author Alejandro
 */
public class UsuariInexistentException extends Exception {

    public UsuariInexistentException() {
    }
    /**
     *
     * @return missatge de l'error.
     */
    @Override
    public String getMessage(){
        return "El nom d'usuari és incorrecte!";
    }
}
