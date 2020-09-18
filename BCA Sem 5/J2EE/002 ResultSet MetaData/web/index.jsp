<%-- 
    Document   : index
    Created on : Sep 19, 2020, 1:01:54 AM
    Author     : Smtbo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.util.*, java.io.*"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    ResultSetMetaData rsmd = null;

    String drv = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/mysql_con";
    String user = "root";
    String pass = "";

    try {
        Class.forName(drv);
        con = DriverManager.getConnection(url, user, pass);
        st = con.createStatement();
        rs = st.executeQuery("SELECT `user_id` AS 'id', `user_name` AS 'Name', `user_city` AS 'City' FROM `users`");
        rsmd = rs.getMetaData();
    } catch (Exception e) {
        out.print("Not Conected");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if (rs != null) { %>
        <h3>Table Name : <%= rsmd.getTableName(1) %></h3>
        <h3>Table Column Count : <%= rsmd.getColumnCount() %></h3>
        <h3>Column 1 name : <%= rsmd.getColumnName(1) %></h3>
        <h3>Column 2 name : <%= rsmd.getColumnName(2) %></h3>
        <h3>Column 3 name : <%= rsmd.getColumnName(3) %></h3>
        <table cellpadding="5" border="2">
            <tr>
                <th><%= rsmd.getColumnLabel(1) %></th>
                <th><%= rsmd.getColumnLabel(2) %></th>
                <th><%= rsmd.getColumnLabel(3) %></th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
            </tr>
            <% } %>
        </table>
        <% }%>
    </body>
</html>
