<%-- 
    Document   : index
    Created on : 26-abr-2015, 12:05:26
    Author     : Alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Videojocs</title>
    </head>
    <body>
        <h1>Gestiona els teus videojocs!</h1>
        <a href="Controlador?accio=crear">Crea un videojoc</a><br/>
        <a href="Controlador?accio=llistar_per_editar">Edita un videojoc</a><br/>
        <a href="Controlador?accio=llistar">Llista els videojocs</a><br/>
        <a href="Controlador?accio=eliminar">Elimina un videojoc</a><br/>
    </body>
</html>
