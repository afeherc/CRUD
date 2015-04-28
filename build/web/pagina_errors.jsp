<%-- 
    Document   : pagina_errors
    Created on : 28-abr-2015, 22:10:55
    Author     : Alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="controllers.UsuariRepetitException"%>
<%@ page import="controllers.PasswordIncorrecteException"%>
<%@ page import="controllers.IdExistentException"%>
<%@ page import="controllers.UsuariInexistentException"%>
<%@ page isErrorPage="true" contentType="text/html" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Houston, houston, tenemos un problema</title>
    </head>
    <body>  
        <%    
        if(exception.getCause() instanceof UsuariRepetitException){
            out.print("Ho lamento: no podem tenir usuaris amb el mateix identificador.\n");
        } 
        else if(exception.getCause()instanceof IdExistentException){
            out.print("Ho sento: el id introduït ja esta siguent usat.");
        }else if(exception.getCause()instanceof PasswordIncorrecteException){
            out.print("Ho sento: el password no es correcte.");
        }else if(exception.getCause()instanceof UsuariInexistentException){
            out.print("Ho sento: el usuari no està a la base de dades.");
        }
        %>      
    </body>
</html>
