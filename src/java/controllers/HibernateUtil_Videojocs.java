package controllers;


import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Alejandro
 */
public class HibernateUtil_Videojocs {
    
    private final static SessionFactory sessionFactory = createSessionFactory();
    
    private static SessionFactory createSessionFactory(){
        
        try{
            Configuration configuration = new Configuration();
            configuration.configure("hibernate.cfg.xml");
            StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
            return new Configuration().configure().buildSessionFactory(ssrb.build());
        }catch(Throwable ex){
            System.err.println("La creacio de la factoria de sessió a fallat "+ ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    
    public static SessionFactory getSessionFactory(){
        return sessionFactory;
    }
    
    public static void shutdown(){
        getSessionFactory().close();
    }
}
