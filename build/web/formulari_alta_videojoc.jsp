<%-- 
    Document   : formulari_alta_videojoc
    Created on : 26-abr-2015, 14:31:13
    Author     : Alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="videojoc" class="classes.Videojoc" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta videojocs</title>
    </head>
    <body>
        <h1>Alta videojocs</h1>
        <jsp:setProperty name="videojoc" property="*" />
        <% if(request.getParameter("idVideojoc")==null){%>
        <h2>Dades del videojoc</h2>
        <form method="post">
            <label for="idVideojoc">Id Videojoc: </label>
            <input name="idVideojoc" type="text" size="4" required="true"/><br/>
            <label for="titol">Titol: </label>
            <input name="titol" type="text" size="20" required="true"/><br/>
            <label for="disenyadors">Disenyadors: </label>
            <input name="disenyadors" type="text" size="20"/><br/>
            <label for="desenvolupadors">Desenvolupadors: </label>
            <input name="desenvolupadors" type="text" size="20"/><br/>
            <label for="distribuidors">Distribuidors: </label>
            <input name="distribuidors" type="text" size="20"/><br/>
            <label for="plataformes">Plataformes: </label>
            <input name="plataformes" type="text" size="20" required="true"/><br/>
            <input type="submit" value="Inserir videojoc" name="inserir">
        </form>
        <% }else {%>
        <jsp:forward page="Controlador?accio=inserir" />
        <% }%>
        <a href="index.jsp">Torna al index</a>
    </body>
</html>
