package provesPersistencia;

import classes.Videojoc;
import controllers.HibernateUtil_Videojocs;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 * Classe Proves per comprovar si els mappings funcionen.
 * @author Alejandro
 * @since 1.0
 * @version 1.0 29-04-2015
 */
public class Proves {
    public static void main(String[] args) {
        System.out.println("Hibernate + Oracle 11 xe + Prova llibres");
        Session session = HibernateUtil_Videojocs.getSessionFactory().openSession();
         //insertLlibre(session);
        // queryLlibres(session);
        // consultaLlibre(session);
        // updateLlibre(session);
        // deleteLlibre(session);
        // session.close();
        }
        public static void deleteLlibre(Session session){
        //Query q = session.createQuery("delete Entity where id = X");
        //q.executeUpdate();
        session.beginTransaction();
        Videojoc book = new Videojoc(1, "Don Quijote de la Mancha", "Cervantes","","","Nintendo");
        session.delete(book);
        session.getTransaction().commit();
        }
        public static void consultaLlibre(Session session) {
        Videojoc book = (Videojoc) session.get(Videojoc.class, 2);
        System.out.println("Llibre: " + book);
        }
        public static void updateLlibre(Session session) {
        session.beginTransaction();
        Videojoc book = new Videojoc(1, "Don Quijote de la Mancha", "Cervantes","","","Playsation");
        session.update(book);
        session.getTransaction().commit();
        }
        public static void insertLlibre(Session session) {
        session.beginTransaction();
        Videojoc book = new Videojoc(4, "Harpo habla", "Harpo Marx","","","Gamecube");
        session.save(book);
        session.getTransaction().commit();
        }
        public static void queryLlibres(Session session) {
        session.beginTransaction();
        Query query = session.createQuery("from Llibre");
        List<Videojoc> list = new ArrayList();
        list = query.list();
        for (Videojoc book : list) {
        System.out.println("Llibre: " + book.getTitol() + " " + book.getPlataformes());
        }
        session.getTransaction().commit();
    }
}
