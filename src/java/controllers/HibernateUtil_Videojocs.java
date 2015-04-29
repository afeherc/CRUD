package controllers;


import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 * Classes per crear la factoría de sessió amb la configuració d'hibernate.
 * @author Alejandro Feher Canadell
 * @since 1.0
 * @version 1.0 29-04-2015
 */
public class HibernateUtil_Videojocs {
    
    private final static SessionFactory sessionFactory = createSessionFactory();
    /**
     * Mètode estàtic per crear la factoría de sessió.
     */
    private static SessionFactory createSessionFactory(){
        
        try{
            Configuration configuration = new Configuration();
            configuration.configure("hibernate.cfg.xml");
            StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
            return new Configuration().configure().buildSessionFactory(ssrb.build());
        }catch(HibernateException ex){
            System.err.println("La creacio de la factoria de sessió a fallat "+ ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    /**
     * Mètode que retorna la factoría de sessió.
     * @return la factoría.
     */
    public static SessionFactory getSessionFactory(){
        return sessionFactory;
    }
    /**
     * Mètode per tancar la factoría de sessió.
     */
    public static void shutdown(){
        getSessionFactory().close();
    }
}
