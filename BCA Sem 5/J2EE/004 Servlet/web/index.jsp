<%-- 
    Document   : index
    Created on : Sep 19, 2020, 1:53:12 AM
    Author     : Smtbo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="padding-top: 200px">
    <center>
        <form action="Welcome" method="POST">
            <div>
                Name : <input type="text" name="name">
            </div>
            <div>
                City : <input type="text" name="city">
            </div>
            <input type="submit" name="show" value="Show">
        </form>
    </center>
    </body>
</html>
