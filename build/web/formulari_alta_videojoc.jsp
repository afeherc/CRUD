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
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:setProperty name="videojoc" property="*" />
        <% if(request.getParameter("idVideojoc")==null){%>
        <form action="" method="post" class="elegant-aero">
            <h1> Alta videojocs. Dades del videojoc. 
                <span>Siusplau empleneu el formulari amb les dades del videojoc. </span>
            </h1>
            <label>
                <span>Id Videojoc :</span>
                <input id="idVideojoc" type="text" name="idVideojoc" placeholder="Id del videojoc" size="20" required="true" />
            </label>
            <label>
                <span>Titol :</span>
                <input id="titol" type="text" name="titol" placeholder="Titol del joc" size="20"  required="true"/>
            </label>
            <label>
                <span>Dissenyadors :</span>
                <input id="dissenyadors" type="text" name="dissenyadors" placeholder="Dissenyadors del joc" size="20" />
            </label>
            <label>
                <span>Desenvolupadors :</span>
                <input id="desenvolupadors" type="text" name="desenvolupadors" placeholder="Desenvolupadors del joc" size="20" />
            </label>
            <label>
                <span>Distribuidors :</span>
                <input id="distribuidors" type="text" name="distribuidors" placeholder="Distribuidors del joc" size="20" />
            </label>
            <label>
                <span>Plataformes :</span>
                <input id="plataformes" type="text" name="plataformes" placeholder="Plataformes per jugar al joc" size="20" required="true" />
            </label>
            <label>
                <span>&nbsp;</span> 
                <input type="submit" class="button" value="Inserir videojoc" /> 
            </label>  
            Torna al <a href="index.jsp">index</a>
        </form>
        
        <!--<form method="post">
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
        </form>-->
        <% }else {%>
        <jsp:forward page="Controlador?accio=inserir" />
        <% }%>
        
    </body>
</html>
