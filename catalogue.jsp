<%-- 
    Document   : catalogue
    Created on : 14 mars 2019, 09:39:22
    Author     : fouad
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="tools.Connexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="embelisseur.css" rel="stylesheet" type="text/css"/>
        <title>Catalogue</title>
    </head>
    <body>
    <center><h1>Catalogue</h1><h2><a href="Accueil.html">Accueil</a></h2></center>
    <%
   
   Connection maConn = Connexion.getInstance().ouvrir("mfcat1", "sa", "jaleelfouad");
   String req = "select * from Article";
    Statement cs = maConn.createStatement();
    ResultSet rs = cs.executeQuery(req);
%>
 
       
        <center><table style= " width: 60%">
            <tr>
                <th>Reference</th>
                <th>Titre</th> 
                <th>Auteur</th>
                <th>Photo</th>
                <th>prix</th>
                <th>genre</th>
            </tr>
            <% while (rs.next()) {%>
            
                <tr>
                <td><%=rs.getString("reference")%></td>
                <td><%=rs.getString("titre")%></td>
                <td><%=rs.getString("auteur")%></td>
                <td><img src="image/<%=rs.getString("photo")%>" /></td>
                <td><%=rs.getString("prix")%></td>
                <td><%=rs.getString("genre")%></td>
            </tr>
            <%}
            %>
            
        </table></center>
            
</body>
</html>
