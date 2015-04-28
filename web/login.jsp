<%-- login.jsp 
-- pagina d'entrada a un sistema. S'utilitza un bean Usuari
-- amb totes les properties per passar
-- el contingut de les caixes de text del formulari a la funcio validarUsuari
-- Els "name" de les caixes del formulari han de ser "exactament" el mateix
-- nom que els atributs del Bean [nom-nom, clau-clau, etc-etc]
-- Es passa tot el bean, també, dintre de la sessió. HttpSession
--%>

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
  </head>
  <body>
      <h1> Entrada al sistema </h1>
      <jsp:setProperty name="usu" property="*" />
      <% if (request.getParameter("nom")==null) { %>
      <form action="login.jsp" method="post">
          <label for="nom">Nom: </label>
          <input type="text" name="nom" size="20" /><br/>
          <label for="clau">Clau: </label>
          <input type="password" name="clau" size="20"  /> <br/>
            
      <input type="submit" value="Login"/>
      
      </form>
      <!-- s'hauria de controlar amb javascript que el formulari no pot ser buit-->
      <% } else{
          
              gestio.validarUsuari(usu);       
              HttpSession ses=request.getSession();
              ses.setAttribute("usua",usu);
      
      %>
      <jsp:forward page="index.jsp" />
        <%  }
      %>
      Si és la primera vegada, <a href="registrar.jsp">registra't </a>
  </body>
</html>

