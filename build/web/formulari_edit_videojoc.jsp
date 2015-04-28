<%-- 
    Document   : formulari_edit_videojoc
    Created on : 27-abr-2015, 10:00:50
    Author     : Alejandro
--%>
<%@page errorPage="pagina_errors.jsp" contentType="text/html" %>
<%@page import="classes.Videojoc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="videojoc" class="classes.Videojoc" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edita el videojoc</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
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
        <form action="Controlador?accio=update" method="post" class="elegant-aero">
            <h1> Edita el videojoc. Dades del videojoc. 
                <span>Siusplau empleneu el formulari amb les dades del videojoc. </span>
            </h1>
            <label>
                <span>Id Videojoc :</span>
                <input id="idVideojoc" type="text" name="idVideojoc" 
                       placeholder="Id del videojoc" size="20" required="true"
                       value="<%=vjoc.getIdVideojoc()%>"/>
            </label>
            <label>
                <span>Titol :</span>
                <input id="titol" type="text" name="titol"
                       placeholder="Titol del joc" size="20" required="true"
                       value="<%=vjoc.getTitol()%>"/>
            </label>
            <label>
                <span>Dissenyadors :</span>
                <input id="dissenyadors" type="text" name="dissenyadors"
                       placeholder="Dissenyadors del joc" size="20" 
                       value="<%=diss%>"/>
            </label>
            <label>
                <span>Desenvolupadors :</span>
                <input id="desenvolupadors" type="text" name="desenvolupadors"
                       placeholder="Desenvolupadors del joc" size="20"
                       value="<%=dese%>"/>
            </label>
            <label>
                <span>Distribuidors :</span>
                <input id="distribuidors" type="text" name="distribuidors" 
                       placeholder="Distribuidors del joc" size="20" 
                       value="<%=dist%>"/>
            </label>
            <label>
                <span>Plataformes :</span>
                <input id="plataformes" type="text" name="plataformes"
                       placeholder="Plataformes per jugar al joc" size="20" 
                       required="true" value="<%=vjoc.getPlataformes()%>"/>
            </label>
            <label>
                <span>&nbsp;</span> 
                <input type="submit" class="button" value="Update videojoc" /> 
            </label><br/>  
            Torna al <a href="index.jsp">index</a>
        </form>
        
        <!--<h2>Dades del videojoc</h2>
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
        <a href="index.jsp">Torna al index</a>-->
    </body>
</html>
