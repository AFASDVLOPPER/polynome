<%-- 
    Document   : cataloguev2
    Created on : 14 mars 2019, 16:32:15
    Author     : fouad
--%>

<%@page import="entites.Articles"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cata" class="beans.Catalogue" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="cata" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="embelisseur.css" rel="stylesheet" type="text/css"/>
        <title>Cata_Bean</title>
    </head>
    <body>
    <center><h1>Affichage Catalogue</h1></center>
                <center><table style= " width: 60%">
            <tr>
                 <th>Reference</th>
                 <th>Titre</th> 
                 <th>Auteur</th>
                 <th>Photo</th>
                 <th>prix</th>
                 <th>genre</th>
            </tr>
            <% for (Articles arti: cata.getCatalogue()) { %>
                <tr>
                <td><%=arti.getReference()%></td>
                <td><%=arti.getTitre()%></td>
                <td><%=arti.getAuteur()%></td>
                <td><img src="image/<%=arti.getImgURL()%>"/></td>
                <td><%=arti.getPrix()%></td>
                <td><%=arti.getGenre() %></td>
            </tr>
            <%}
            %>
            
        </table></center>  
            <center><h2><a href="Accueil.html">Accueil</a></h2></center>
            </body>
            </html>
