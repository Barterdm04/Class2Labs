<%-- 
    Document   : welcomeresults
    Created on : Jan 27, 2015, 1:12:46 PM
    Author     : dbarter1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <h1>Welcome Results Page</h1>
        
        <%
            String msg = "ERROR";
            Object objList = request.getAttribute("message");
            msg = objList == null? msg: objList.toString();
            
        %>
            
            <h3><%= msg %></h3>
    </body>
</html>
