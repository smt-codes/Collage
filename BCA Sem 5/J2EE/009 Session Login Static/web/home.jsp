<%-- 
    Document   : home
    Created on : Oct 6, 2020, 3:37:26 PM
    Author     : Smtbo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            out.print("Login User is " + session.getAttribute("user"));
        %>
        <a href="logout.jsp">Logout</a>
    </body>
</html>
