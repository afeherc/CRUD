<%-- 
    Document   : llistar_videojocs
    Created on : 27-abr-2015, 9:58:23
    Author     : Alejandro
--%>
<%-- llistar_videojocs.jsp 
Pàgina que utilitza un bean de gestió de class.Usuari i un de class.Usuari per 
en cas d'haver emplenat el formulari executar la funció del gestor validarUsuari
i en cas de ser vàlid iniciar una sessió amb l'objecte i finalment un forward al
index.jsp
--%>
<%@page errorPage="pagina_errors.jsp" contentType="text/html" %>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page session="true" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="gestio" scope="session" class="controllers.GestioUsu" />
<jsp:useBean id="usu" scope="session" class="classes.Usuari" />

<html>
    <head>
        <title>Entrada al sistema</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:setProperty name="usu" property="*" />
        <% if (request.getParameter("nom") == null) { %>

        <form action="login.jsp" method="post" class="elegant-aero">
            <h1> Entrada al sistema 
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
                <input type="submit" class="button" value="Login" /> 
            </label><br/>  
            <p>Si és la primera vegada, <a href="registrar.jsp">registra't </a></p>
        </form>

        <!-- <form action="login.jsp" method="post" class="elegant-aero">
             <label for="nom">Nom: </label>
             <input type="text" name="nom" size="20" /><br/>
             <label for="clau">Clau: </label>
             <input type="password" name="clau" size="20"  /> <br/>
               
         <input type="submit" value="Login"/>
         </form>-->
        <!-- s'hauria de controlar amb javascript que el formulari no pot ser buit-->
        <% } else {

            gestio.validarUsuari(usu);
            HttpSession ses = request.getSession();
            ses.setAttribute("usua", usu);

        %>
        <jsp:forward page="index.jsp" />
        <%  }
        %>

    </body>
</html>

