


<%-- 
    Document   : TC_Note
    Created on : 26 juin 2019, 15:51:55
    Author     : Fouad
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
   
   Connection maConn = Connexion.getInstance().ouvrir("MQS_TCL", "sa", "jaleelfouad");
   String req = "select * from base_Globale limit 50";
    Statement cs = maConn.createStatement();
    ResultSet rs = cs.executeQuery(req);
%>
 
       
        <center><table style= " width: 60%">
            <tr>
                <th>Note_Clt</th>
                <th>Note_Dlg</th> 
                <th>Note_Gly</th>
                <th>Note_Prestatram</th>
                <th>Note_Etat</th>
                <th>Note_Proprete</th> 
            </tr>
            <% while (rs.next()) {%>
            
                <tr>
                <td><%=rs.getString("c_Note")%></td>
                <td><%=rs.getString("c_Note_DELEG")%></td>
                <td><%=rs.getString("c_Note_Gdlyon")%></td>
                <td><%=rs.getString("c_Note_Prestatram")%></td>
                <td><%=rs.getString("c_Note_Etat")%></td>
                <td><%=rs.getString("c_Note_Proprete")%></td>
            </tr>
            <%}
            %>
            
        </table></center>
            
</body>
</html>