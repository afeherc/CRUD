package controllers;

/**
 *
 * @author Alejandro
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
