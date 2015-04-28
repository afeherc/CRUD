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
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <form action="" method="post" class="elegant-aero">
            <h1> Llistat de videojocs per editar.
                <span>Fes clic en el numero de identificador per editar un videojoc. </span>
            </h1>  
        

        <table>   
            <tr><th>Id</th><th>Títol</th><th> Dissenyadors</th><th>Desenvolupadors</th><th>Distribuidors</th><th>Plataformes</th></tr>       
        
        <% ArrayList<Videojoc> l=(ArrayList<Videojoc>)request.getAttribute("videojocs");         
            for(Videojoc vjoc: l){
                 out.print("<tr><td><a href=\"Controlador?accio=editar&idVideojoc="+vjoc.getIdVideojoc()+"\"&first=true>"+vjoc.getIdVideojoc()+"</a></td>");
                 out.print("<td>"+vjoc.getTitol()+"</td>");
                 out.print("<td>"+vjoc.getDissenyadors()+"</td>");
                 out.print("<td>"+vjoc.getDesenvolupadors()+"</td>");
                 out.print("<td>"+vjoc.getDistribuidors()+"</td>");
                 out.print("<td>"+vjoc.getPlataformes()+"</td>");
                 out.print(" </tr>");
            }
            %>
       </table><br/>
       Torna al <a href="index.jsp">index</a>
       </form>
    </body>
</html>