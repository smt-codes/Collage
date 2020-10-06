<%-- 
    Document   : index
    Created on : Oct 6, 2020, 3:18:23 PM
    Author     : Smtbo
--%>
<%
    Object uname = request.getParameter("uname");
    Object pass = request.getParameter("pass");
    if (uname != null && pass != null) {
        if (uname.toString().equals("admin") && pass.toString().equals("admin")) {
            session.setAttribute("user", "admin");
            response.sendRedirect("home.jsp");
        }
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Login Page</h3>
        <form method="POST">
            Username : <input type="text" name="uname"><br>
            Password : <input type="password" name="pass"><br>
            <input type="submit" name="login" value="Login">
        </form>
    </body>
</html>
