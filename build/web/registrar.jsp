<%-- 
    Document   : registrar
    Created on : 28-abr-2015, 10:28:00
    Author     : Alejandro
--%>
<!--   registrar.jsp 
 Serveix per donar d'alta usuaris nous del sistema
 no pot existir el mateix nom en la bbdd, sino salta excepcio
 Es passa tot l'usuari a la sessio
-->
<%@page errorPage="pagina_errors.jsp" contentType="text/html" %>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="gestio" scope="session" class="controllers.GestioUsu" />
<jsp:useBean id="usu" scope="session" class="classes.Usuari" />

<html>
    <head>
        <title>Registre</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:setProperty name="usu" property="*" />
        <% if (request.getParameter("nom") == null) { %>

        <form action="registrar.jsp" method="post" class="elegant-aero">
            <h1> Nou registre 
                <span>Siusplau empleneu el formulari amb les vostres dades. </span>
            </h1>
            <label>
                <span>Nom :</span>
                <input id="nom" type="text" name="nom" placeholder="El teu nom complet" size="20" />
            </label>

            <label>
                <span>Clau :</span>
                <input id="clau" type="password" name="clau" placeholder="Contrasenya" size="20" />
            </label>
            <label>
                <span>&nbsp;</span> 
                <input type="submit" class="button" value="Registrar" /> 
            </label><br/>  
            Torna al <a href="index.jsp">index</a>  
        </form>
        <!--<form action="registrar.jsp" method="post">
            <label for="nom">Nom: </label>
            <input type="text" name="nom" size="20" /><br/>
            <label for="clau">Clau: </label>
            <input type="password" name="clau" size="20"  /> <br/>  
        <input type="submit" value="Registrat"/>
        </form>-->

        <% } else {
          gestio.registrarUsuari(usu); %>
        <% HttpSession ses = request.getSession();
            /* setAttribute Name, Value */
            ses.setAttribute("usua", usu);
        %>
        <jsp:forward page="index.jsp" />

        <% }%>
    </body>
</html>