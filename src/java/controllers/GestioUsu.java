/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers;

import classes.Usuari;
import javax.servlet.ServletException;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Alejandro
 */
public class GestioUsu{
    
    public GestioUsu()throws Exception{}
    //Validar ususari
    public void validarUsuari(Usuari usu) throws ServletException{
        try{
            
            Session session = HibernateUtil_Videojocs.getSessionFactory().openSession();
            
            
                //consulta a la bd a traves d'Hibernate
                session.beginTransaction();
                Query query = session.createQuery("from Usuari where nom =:NOM");
                query.setParameter("NOM", usu.getNom());
                String pass=usu.getClau();
                Usuari usuari;
                usuari = (Usuari)query.uniqueResult();
                if (!(usuari==null)){
                    if(!usuari.getClau().equals(pass));
                }
                
                //llistat amb enllaç per modificar        
                    
//        if(res.next()){ /* si hi ha un registre*/
//               /* si coincideix la clau*/
//               if(!res.getString("clau").equals(p2)) throw new PasswordIncorrecteException();
//        }
//        else throw new UsuariInexistentException(); /* no hi ha registre, per tant, no hi ha usuari*/  
          }catch(HibernateException | NumberFormatException ex){
            System.out.println("Controlador "+ex);
            
            throw new ServletException(ex);
        }
    }
    
    public void registrarUsuari(Usuari u){
        Session session = HibernateUtil_Videojocs.getSessionFactory().openSession();
        //les dades venen del formulari (la vista)
                Usuari usuari=u;
                //manipulacio bd a traves d'Hibernate
                session.beginTransaction();
                //session.saveOrUpdate(vjoc);
                session.save(usuari);
                session.getTransaction().commit();
    }
    
    
}
