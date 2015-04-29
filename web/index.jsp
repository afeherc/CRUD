<%-- 
    Document   : index
    Created on : 26-abr-2015, 12:05:26
    Author     : Alejandro
--%>
<%-- index.jsp 
Pàgina que redirecciona al controlador les demandes del usuari o torna al login.
--%>
<%@page import="classes.Usuari"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Videojocs</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%  HttpSession ses=request.getSession();
            String nom;
            Usuari bu=(Usuari)ses.getAttribute("usua");
            if(bu==null) out.print("Sessió incorrecte. Torna al <a href=\"login.jsp\">login</a>");
            else{ nom=bu.getNom();
        %>
        <form action="" method="post" class="elegant-aero">
            <h1> Gestiona els teus videojocs 
                <span>Hola, <%=nom%>.</span>
            </h1>
            <a href="Controlador?accio=crear">Crea un videojoc</a><br/>
        <a href="Controlador?accio=llistar_per_editar">Edita un videojoc</a><br/>
        <a href="Controlador?accio=llistar">Llista els videojocs</a><br/>
        <a href="Controlador?accio=eliminar">Elimina un videojoc</a><br/><br/>  
            Torna al <a href="login.jsp">login</a>  
        </form>
        
        <!--<p>Hola, <%--=nom--%>.</p><br/>
        <h1>Gestiona els teus videojocs!</h1>
        <a href="Controlador?accio=crear">Crea un videojoc</a><br/>
        <a href="Controlador?accio=llistar_per_editar">Edita un videojoc</a><br/>
        <a href="Controlador?accio=llistar">Llista els videojocs</a><br/>
        <a href="Controlador?accio=eliminar">Elimina un videojoc</a><br/>-->
        <% }%>
    </body>
</html>
