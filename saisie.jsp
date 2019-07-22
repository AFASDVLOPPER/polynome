<%-- 
    Document   : saisie
    Created on : 6 mars 2019, 15:51:22
    Author     : fouad
--%>

<%@page import="java.util.Iterator"%>
<%@page import="metiers.Convertisseur"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="convert" class="beans.Convertbean" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="convert" />

<%!
       private String remplir(String monnaie, String valeur) {
        //remplissage des listes déroulantes
        Map conversionTable = Convertisseur.getConversionTable();
        String result = "<select name=\"" + monnaie + "\"><option></option>";
        for (Iterator iter = conversionTable.keySet().iterator(); iter.hasNext();) {
            result = result + "<option";
            String option = (String) iter.next();
            if (valeur.equals(option)) {
                result = result + " selected";
            }
            result = result + ">" + option + "</option>";
        }
        result = result + "</select>";
        return result;
    }
%>

<%
    if ((request.getParameter("monnaiedep") != null)) {
        
       
          if (convert.controler()) {
            request.getRequestDispatcher("resultat.jsp").forward(request, response);
        } 
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="embelisseur.css" rel="stylesheet" type="text/css"/>
        <title>Saisie Devise</title>
    </head>
    <body>
    <center><h1>Saisie des cours d'échanges</h1></center>
    <center><h2>Bean Version</h2></center>
    <form action="saisie.jsp" method="POST">
        <center><fieldset id="field">
                </br></br>
                <label>Monnaie de Depart</label>
                <%= remplir("monnaiedep", convert.getMonnaiedep())%>
                <span style="color: red" class="err" id="err"><%= convert.getErrors().get("monnaiedep")%></span> 
                </br></br></br></br>

                <label>Montant à convertir</label>
                
                <input style="font-size: medium; color: black" id='mac' type="number" placeholder="montant" name="montant" value="<%=convert.getMontant()%>" /> 
                <span style="color: red;font-size: medium" class="err" id="err"><%=convert.getErrors().get("montant") %></span>
                </br></br></br></br>
                <label>Monnaie d'arrivée</label> 
                <%= remplir("monnaiearr", convert.getMonnaiearr())%>
                <span style="color: red" class="err" id="err"><%=convert.getErrors().get("monnaiearr")%></span> 
                </br></br></br></br>
                <input style=" background-color: thistle;border: solid black;border-radius: 10px; font-size: medium" type="submit" value="Valider" />
            </fieldset></center>
    </form>
    <center><h2><a href="Accueil.html">Accueil</a></h2></center>
</body>
</html>

