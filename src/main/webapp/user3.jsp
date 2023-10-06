<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome, <%= session.getAttribute("username") %></h1>
    
    <h1>I am user cat</h1>
    
    <form action="Logout" method="GET">
        <input type="submit" value="Log Out">
    </form>
</body>
</html>