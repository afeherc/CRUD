package classes;

import java.io.Serializable;

/**
 * POJO de videojoc
 * @author Alejandro Feher Canadell
 * @since 1.0
 * @version 1.0 29-04-2015
 */
public class Videojoc implements Serializable{
    private int idVideojoc;
    private String titol;
    private String dissenyadors;
    private String desenvolupadors;
    private String distribuidors;
    private String plataformes;
    
    public Videojoc(){}

    public Videojoc(int idVideojoc, String titol, String dissenyadors,
            String desenvolupadors, String distribuidors, String plataformes) {
        this.idVideojoc = idVideojoc;
        this.titol = titol;
        this.dissenyadors = dissenyadors;
        this.desenvolupadors = desenvolupadors;
        this.distribuidors = distribuidors;
        this.plataformes = plataformes;
    }

    public int getIdVideojoc() {
        return idVideojoc;
    }

    public void setIdVideojoc(int idVideojoc) {
        this.idVideojoc = idVideojoc;
    }

    public String getTitol() {
        return titol;
    }

    public void setTitol(String titol) {
        this.titol = titol;
    }

    public String getDissenyadors() {
        return dissenyadors;
    }

    public void setDissenyadors(String disenyadors) {
        this.dissenyadors = disenyadors;
    }

    public String getDesenvolupadors() {
        return desenvolupadors;
    }

    public void setDesenvolupadors(String desenvolupadors) {
        this.desenvolupadors = desenvolupadors;
    }

    public String getDistribuidors() {
        return distribuidors;
    }

    public void setDistribuidors(String distribuidors) {
        this.distribuidors = distribuidors;
    }

    public String getPlataformes() {
        return plataformes;
    }

    public void setPlataformes(String plataformes) {
        this.plataformes = plataformes;
    }

    @Override
    public String toString() {
        return "Videojoc{" + "idVideojoc=" + idVideojoc + ", titol=" + titol +
                ", dissenyadors=" + dissenyadors + ", desenvolupadors=" +
                desenvolupadors + ", distribuidors=" + distribuidors +
                ", plataformes=" + plataformes + '}';
    }
    
    
}
