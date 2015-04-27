<%-- 
    Document   : llistar_videojocs
    Created on : 27-abr-2015, 9:44:23
    Author     : Alejandro
--%>


<%@page import="classes.Videojoc"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Llistat videojocs</title>
    </head>
    <body>
        <h1>Llistat de videojocs</h1>
        
             
        <table>   
            <tr><th>Id</th><th>Títol</th><th> Dissenyadors</th><th>Desenvolupadors</th><th>Distribuidors</th><th>Plataformes</th></tr>       
        
        <% ArrayList<Videojoc> l=(ArrayList<Videojoc>)request.getAttribute("videojocs");         
            for(Videojoc vjoc: l){
                 out.print("<tr><td>"+vjoc.getIdVideojoc()+"</td>");
                 out.print("<td>"+vjoc.getTitol()+"</td>");
                 out.print("<td>"+vjoc.getDissenyadors()+"</td>");
                 out.print("<td>"+vjoc.getDesenvolupadors()+"</td>");
                 out.print("<td>"+vjoc.getDistribuidors()+"</td>");
                 out.print("<td>"+vjoc.getPlataformes()+"</td>");
                 out.print(" </tr>");
            }
            %>
       </table>
       <a href="index.jsp">Torna al index</a>
    </body>
</html>
