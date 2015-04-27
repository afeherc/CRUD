package controllers;

import classes.Videojoc;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Alejandro
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet{
    /**
     * 
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     */
    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            Session session = HibernateUtil_Videojocs.getSessionFactory().openSession();
            String accio = request.getParameter("accio");
            
            if (accio.equals("crear")) {
                //vista
                response.sendRedirect("formulari_alta_videojoc.jsp");

            } else if (accio.equals("inserir")) {
                //les dades venen del formulari (la vista)
                Videojoc vjoc = (Videojoc) request.getAttribute("videojoc");
                //manipulacio bd a traves d'Hibernate
                session.beginTransaction();
                //session.saveOrUpdate(vjoc);
                session.save(vjoc);
                session.getTransaction().commit();

                response.sendRedirect("index.jsp");

            } else if (accio.equals("llistar")) {
                //consulta a la bd a traves d'Hibernate
                session.beginTransaction();
                Query query = session.createQuery("from Videojoc");
                List<Videojoc> list = new ArrayList();
                list = query.list();
                session.getTransaction().commit();

                request.setAttribute("videojocs", list);
                RequestDispatcher rd = request.getRequestDispatcher("llistar_videojocs.jsp");
                rd.forward(request, response);

                //llistat amb enllaç per modificar
            } else if (accio.equals("eliminar")) {
                //vista
                response.sendRedirect("formulari_elimina_videojoc.jsp");

            } else if (accio.equals("delete")) {
                //model 

                String id = request.getParameter("idVideojoc");
                //consulta a la bd a traves d'Hibernate
                session.beginTransaction();
                Query query = session.createQuery("delete Videojoc where id = :ID");
                query.setParameter("ID", new Integer(Integer.parseInt(id)));
                query.executeUpdate();
                session.getTransaction().commit();
                response.sendRedirect("index.jsp");
            } else if (accio.equals("editar")){
                //recull id.
                String id = request.getParameter("idVideojoc");
                //consulta a la bd a traves d'Hibernate
                session.beginTransaction();
                Query query = session.createQuery("from Videojoc where id = :ID");
                query.setParameter("ID", new Integer(Integer.parseInt(id)));
                Videojoc vjoc;
                vjoc = (Videojoc)query.uniqueResult();
                session.getTransaction().commit();
                
                request.setAttribute("videojoc", vjoc);
                RequestDispatcher rd = request.getRequestDispatcher("formulari_edit_videojoc.jsp");
                rd.forward(request, response);
            } else if (accio.equals("update")){
                int id;
                String titol, diss, dese, dist, plat;
                id=Integer.parseInt(request.getParameter("idVideojoc"));
                titol=request.getParameter("titol");
                diss=request.getParameter("dissenyadors");
                dese=request.getParameter("desenvolupadors");
                dist=request.getParameter("distribuidors");
                plat=request.getParameter("plataformes");
                //les dades venen del formulari (la vista)
                Videojoc vjoc = new Videojoc(id, titol, diss, dese, dist, plat);
                //manipulacio bd a traves d'Hibernate
                session.beginTransaction();
                session.saveOrUpdate(vjoc);
                //session.save(vjoc);
                session.getTransaction().commit();

                response.sendRedirect("index.jsp");
            }else if (accio.equals("llistar_per_editar")){
                //consulta a la bd a traves d'Hibernate
                session.beginTransaction();
                Query query = session.createQuery("from Videojoc");
                List<Videojoc> list = new ArrayList();
                list = query.list();
                session.getTransaction().commit();

                request.setAttribute("videojocs", list);
                RequestDispatcher rd = request.getRequestDispatcher("llistar_per_editar_videojocs.jsp");
                rd.forward(request, response);
            }
        }catch(HibernateException | IOException | ServletException | NumberFormatException ex){
            System.out.println("Controlador "+ex);
            
            throw new ServletException(ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
    }
    
}
