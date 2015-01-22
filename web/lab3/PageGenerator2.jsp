<%-- 
    Document   : PageGenerator2
    Created on : Jan 22, 2015, 2:05:54 PM
    Author     : dbarter1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    String color = request.getParameter("color"); 
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="color:<%= color %>">This is a JSP Table</h1>
        <table border="1">
            <%
            for(int i = 1;i <= 20; i++){
                out.println("<tr>");
                for(int x = 1; x <= 20; x++){
                    out.println("<td style='width:30px;'>" + i * x + "</td>");
                }
                out.println("</tr>");
            }
            
            %>
        </table>
            
    </body>
</html>
