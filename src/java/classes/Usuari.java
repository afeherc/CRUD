package classes;

import java.io.Serializable;

/**
 * POJO de Usuari 
 * @author Alejandro
 * @since 1.0
 * @version 1.0 29-04-2015
 */
public class Usuari implements Serializable{
    private String nom;
    private String clau;
    
    /** Creates a new instance of Usuari */
    public Usuari() {
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String n) {
        this.nom = n;
    }

    public String getClau() {
        return clau;
    }

    public void setClau(String c) {
        this.clau = c;
    }
}
