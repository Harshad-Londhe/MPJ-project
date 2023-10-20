<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
		
	int id = Integer.parseInt(request.getParameter("id"));
	String managerID = request.getParameter("managerID");
	String orderDate = request.getParameter("orderDate");
	String itemAndqty = request.getParameter("itemAndqty");
	String itemDesc = request.getParameter("itemDesc");
	String orderStatus = request.getParameter("orderStatus");
	
	%>




	<form action="updMOrd" method = "post">
	 <table>
		<tr>
			<td>Order ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Manager</td>
			<td><input type="text" name="managerID" value="<%= managerID %>" readonly></td>
		</tr>
		<tr>
			<td>Order Date</td>
			<td><input type="text" name="orderDate" value="<%= orderDate %>" readonly></td>
		</tr>
		<tr>
			<td>Item And Quantity</td>
			<td><input type="text" name="itemAndqty" value="<%= itemAndqty %>"></td>
		</tr>
		<tr>
			<td>Item Description</td>
			<td><input type="text" name="itemDesc" value="<%= itemDesc %>"></td>
		</tr>
		<tr>
			<td>Order Status</td>
			<td><input type="text" name="orderStatus" value="<%= orderStatus %>" readonly></td>
		</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update Order">
	</form>
	
	<form action="delMOrd" method = "post">
		<input type="hidden" name="id" value="<%= id %>">
		<input type="hidden" name="managerID" value="<%= managerID %>">
		<input type="submit" name="submit" value="Delete Order">
	</form>

</body>
</html>