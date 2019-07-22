<%-- 
    Document   : resultat
    Created on : 11 mars 2019, 15:45:02
    Author     : fouad
--%>
<%@page import="java.util.Iterator"%>
<%@page import="metiers.Convertisseur"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="convert" class="beans.Convertbean" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="convert" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="embelisseur.css" rel="stylesheet" type="text/css"/>
        <title>Resultat</title>
    </head>
    <body>
    <center><fieldset id="field">
            <h2>Devise départ :
                <%=convert.getMonnaiedep()%>
            </h2> 
            <h2>Montant :
                <%=convert.getMontant()%>
            </h2>
            <h2>Devise arrivée :
                <%=convert.getMonnaiearr()%>
            </h2>
        </fieldset></center>   
    </br></br>
    <center><fieldset id="field">
            
     <h2>${convert.montant}
         ${convert.monnaiedep} 
          
         = 
         <%=convert.getNewMont() %>
        <%=convert.getMonnaiearr()%>
     </h2>
           
        </fieldset></center>
    </br>
    <center><h2><a href="saisie.jsp">Page de saisie</a></h2></center>
</body>
</html>
