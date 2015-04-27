<%-- 
    Document   : formulari_elimina_videojoc
    Created on : 27-abr-2015, 12:10:16
    Author     : Alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar videojoc</title>
    </head>
    <body>
        
        <form action="Controlador?accio=delete" method="post">
       <label> Introdueix el id del videojoc a eliminar. <br />
          <input type="text" name="idVideojoc" />
       </label>
            <input type="submit" name="Elimina" value="Elimina videojoc"> 
        </form>
    </body>
</html>