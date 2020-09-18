<%-- 
    Document   : index
    Created on : Sep 19, 2020, 12:53:05 AM
    Author     : Smtbo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.util.*, java.io.*"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    String drv = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/mysql_con";
    String user = "root";
    String pass = "";
    try {
        Class.forName(drv);
        
        con = DriverManager.getConnection(url, user, pass);
        
        st = con.createStatement();
        
        rs = st.executeQuery("SELECT * FROM `users`");
        
    } catch (Exception e) {
        out.print("not Connect");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if(rs != null){ %>
        <table cellpadding="10" border="2">
            <tr>
                <th>id</th>
                <th>Name</th>
                <th>City</th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td><%= rs.getString("user_id") %></td>
                <td><%= rs.getString("user_name") %></td>
                <td><%= rs.getString("user_city") %></td>
            </tr>
            <% } %>
        </table>
        <% } %>
    </body>
</html>