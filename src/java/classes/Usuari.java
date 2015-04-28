/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package classes;

import java.io.Serializable;

/**
 *
 * @author Alejandro
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
