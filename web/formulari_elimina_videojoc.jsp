<%-- 
    Document   : formulari_elimina_videojoc
    Created on : 27-abr-2015, 12:10:16
    Author     : Alejandro
--%>
<%@page errorPage="pagina_errors.jsp" contentType="text/html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar videojoc</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <form action="Controlador?accio=delete" method="post" class="elegant-aero">
            <h1> Elimina videojoc.
                <span>Siusplau introdueix el id del videojoc que vols eliminar. </span>
            </h1>
            <label>
                <span>Id videojoc:</span>
                <input id="idVideojoc" type="text" name="idVideojoc" placeholder="Id videojoc" size="20" required="true"/>
            </label>
            <label>
                <span>&nbsp;</span> 
                <input type="submit" class="button" value="Elimina videojoc" /> 
            </label><br/>  
            Torna al <a href="index.jsp">index</a>
        </form>
        
        <!--<form action="Controlador?accio=delete" method="post">
       <label> Introdueix el id del videojoc a eliminar. <br />
          <input type="text" name="idVideojoc" />
       </label>
            <input type="submit" name="Elimina" value="Elimina videojoc"> 
        </form>-->
    </body>
</html>