<%-- 
    Document   : Note
    Created on : 26 juin 2019, 14:05:57
    Author     : Fouad
--%>

<%@page import="entites.Notes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="mes" class="beans.Mesure" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="mes" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="embelisseur.css" rel="stylesheet" type="text/css"/>
        <title>NOTES</title>
    </head>
    <body>
        <center><h1>Affichage de notes</h1></center>
                <center><table style= " width: 60%">
        <tr>
                <th>Note_Clt</th>
                <th>Note_Dlg</th> 
                <th>Note_Gly</th>
                <th>Note_Prestatram</th>
                <th>Note_Etat</th>
                <th>Note_Proprete</th> 
            </tr>
                   <%  for (Notes note : mes.getMesure()) { %>
                <tr>
                <td><%=note.getNote_Clt() %></td>
                <td><%=note.getNote_Dlg() %></td>
                <td><%=note.getNote_Gly() %></td>
                <td><%=note.getNote_Presta() %></td>
                <td><%=note.getNote_Etat()%></td>
                <td><%=note.getNote_Prop()%></td>
            </tr>
            <%}
%>
            </table></center> 
    </body>
</html>

<%--  <h1>Affichage de notes</h1>
                <center><table style= " width: 60%">
            <tr>
                <th>Note_Clt</th>
                <th>Note_Dlg</th> 
                <th>Note_Gly</th>
                <th>Note_Prestatram</th>
                <th>Note_Etat</th>
                <th>Note_Proprete</th> 
            </tr>
            <%  for (Notes note : mes.getListeNote()) { %>
                <tr>
                <td><%=note.getNote_Clt() %></td>
                <td><%=note.getNote_Dlg() %></td>
                <td><%=note.getNote_Gly() %></td>
                <td><%=note.getNote_Presta() %></td>
                <td><%=note.getNote_Etat()%></td>
                <td><%=note.getNote_Prop()%></td>
            </tr>
            <%}
%>
        </table></center>  
            <center><h2><a href="Accueil.html">Accueil</a></h2></center> --%>