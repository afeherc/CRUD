<%-- 
    Document   : formulari_edit_videojoc
    Created on : 27-abr-2015, 10:00:50
    Author     : Alejandro
--%>

<%@page import="classes.Videojoc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="videojoc" class="classes.Videojoc" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edita el videojoc</title>
    </head>
    <body>
        <h1>Edita el videojoc</h1>
        <jsp:setProperty name="videojoc" property="*" />
        <% 
            String diss, dese, dist;
            Videojoc vjoc = (Videojoc)request.getAttribute("videojoc");
            if(vjoc.getDissenyadors()==null){
                diss="";
            }else {
                diss=vjoc.getDissenyadors();
            }
            if(vjoc.getDesenvolupadors()==null){
                dese="";
            }else {
                dese=vjoc.getDesenvolupadors();
            }
            if(vjoc.getDistribuidors()==null){
                dist="";
            }else {
                dist=vjoc.getDistribuidors();
            }
            
        %>
        <h2>Dades del videojoc</h2>
        <form method="post" action="Controlador?accio=update">
            <label for="idVideojoc">Id Videojoc: </label>
            <input name="idVideojoc" type="text" size="4" value="<%=vjoc.getIdVideojoc()%>"/><br/>
            <label for="titol">Titol: </label>
            <input name="titol" type="text" size="20" value="<%=vjoc.getTitol()%>"/><br/>
            <label for="dissenyadors">Dissenyadors: </label>
            <input name="dissenyadors" type="text" size="20" value="<%=diss%>"/><br/>
            <label for="desenvolupadors">Desenvolupadors: </label>
            <input name="desenvolupadors" type="text" size="20" value="<%=dese%>"/><br/>
            <label for="distribuidors">Distribuidors: </label>
            <input name="distribuidors" type="text" size="20" value="<%=dist%>"/><br/>
            <label for="plataformes">Plataformes: </label>
            <input name="plataformes" type="text" size="20" value="<%=vjoc.getPlataformes()%>"/><br/>
            <input type="submit" value="Edita el videojoc" name="editar">
        </form>
        <a href="index.jsp">Torna al index</a>
    </body>
</html>
