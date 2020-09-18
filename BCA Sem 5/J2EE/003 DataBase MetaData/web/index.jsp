<%-- 
    Document   : index
    Created on : Sep 19, 2020, 1:06:24 AM
    Author     : Smtbo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <pre><%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql_con", "root", "");
                
                DatabaseMetaData dbmd = con.getMetaData();
                
                out.println("Diver Name: " + dbmd.getDriverName());
                out.println("Diver Version: " + dbmd.getDriverVersion());
                out.println("User Name: " + dbmd.getUserName());
                out.println("Database Product Name: " + dbmd.getDatabaseProductName());
                out.println("Database Product Verson: " + dbmd.getDatabaseProductVersion());
            } catch (Exception e) {
                out.print("Can't Connect");
            }
            %></pre>
    </body>
</html>
