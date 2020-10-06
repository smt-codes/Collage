<%-- 
    Document   : logout
    Created on : Oct 6, 2020, 3:48:34 PM
    Author     : Smtbo
--%>
<%
    session.removeAttribute("user");
    response.sendRedirect("index.jsp");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
