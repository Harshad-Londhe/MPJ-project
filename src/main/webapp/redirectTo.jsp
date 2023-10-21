<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
</head>
<body>
    <h1>Welcome, <%= session.getAttribute("username") %></h1>
    
    <!-- Log out button -->
    <form action="Logout" method="GET">
        <input type="submit" value="Log Out">
    </form>
</body>
</html>