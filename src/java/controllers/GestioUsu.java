package controllers;

import classes.Usuari;
import javax.servlet.ServletException;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 * Classes per gestionar la validació i el alta de usuaris. Retorna les
 * excepcions indicades segons la circunstància. 
 * @author Alejandro Feher Canadell
 * @since 1.0
 * @version 1.0 29-04-2015
 */
public class GestioUsu {

    /**
     * Mètode buït per validar usuaris.
     */
    public void validarUsuari(Usuari usu) throws UsuariInexistentException, 
            PasswordIncorrecteException, ServletException {
        try {
            //Inici de sessio amb hibernate.
            Session session = HibernateUtil_Videojocs.getSessionFactory().openSession();
            //consulta a la bd a traves d'Hibernate.
            session.beginTransaction();
            Query query = session.createQuery("from Usuari where nom =:NOM");
            query.setParameter("NOM", usu.getNom());
            String pass = usu.getClau();
            Usuari usuari;
            usuari = (Usuari) query.uniqueResult();
            if (!(usuari == null)) {
                if (!usuari.getClau().equals(pass)) {
                    throw new PasswordIncorrecteException();
                }
            } else {
                throw new UsuariInexistentException();
            }

        } catch (HibernateException | NumberFormatException ex) {
            System.out.println("Controlador " + ex);

            throw new ServletException(ex);
        }
    }
    /**
     * Mètode buït per enregistrar usuaris nous a la base de dades en cas
     * que no ho estiguin ja.
     */
    public void registrarUsuari(Usuari u) throws UsuariRepetitException{
        try{
        Session session = HibernateUtil_Videojocs.getSessionFactory().openSession();
        //les dades venen del formulari (la vista)
        Usuari usuari = u;
        //manipulacio bd a traves d'Hibernate
        session.beginTransaction();
        //session.saveOrUpdate(vjoc);
        session.save(usuari);
        session.getTransaction().commit();
        }catch(HibernateException ex){
            System.out.println(ex);
            throw new UsuariRepetitException();
        }
    }

}
