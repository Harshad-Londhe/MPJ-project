<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%
String username = (String) session.getAttribute("username");
if (username == null) {
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OMOS</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- To add CSS file -->
<link rel="stylesheet" type="text/css"
	href="Supplier/css/supplierHome.css">

<!-- To add Icons -->
<script src="https://kit.fontawesome.com/8d1ac6ad03.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<header>
		<div class="container">
			<div class="logo">
				<img src="images/omos_logo.png" alt="logo">
			</div>
			<div class="headTopic">
				<h1 id="mainHeading">OMOS</h1>
				<h3 id="slogan">Your Health, Our Priority, One Click Away.</h3>
			</div>
		</div>
	</header>

	<div class="Line">
		<!-- Just to Take An empty NavBar -->
	</div>

	<div class="container">
		<h1>Welcome <%=username %></h1>

		<center>
			<div class="MainBoxes">
				<form action="supp" method="post" class="MainBoxes"> <!-- redirect to SupplierServlet -->
					<button type="submit" class="btn btn-primary">My Orders</button>
				</form>

			</div>
		</center>

		<br> <br>
	</div>

	<footer>
		<div class="container">
			<table width="100%">
				<tr class="footTable">
					<th width="20%">ishibishi</th>
					<th width="20%">gayashan</th>
					<th width="20%">dinuvi</th>
					<th width="20%">thilina</th>
					<th width="20%">Follow Us On</th>
				</tr>
				<tr class="footTable">
					<td>
						<ul>
							<li><a href="PPhomePage.php">ishibishi</a></li>
							<li><a href="enter login details.php">gayashan</a></li>
							<li><a href="makeClaim.php">dinuvi</a></li>
							<li><a href="renewpolicy.php">thilina</a></li>
						</ul>
					</td>
					<td><a href="AboutUs.html">About Us</a></td>
					<td><i class="fa-solid fa-phone"></i> +94704484574<br> <br>
						<i class="fa-solid fa-envelope"></i> omos@info.lk <br> <br>
						<i class="fa-solid fa-fax"></i> +94112123123 <br> <br></td>
					<td><i class="fa-solid fa-location-dot"></i> New,<br>SLIIT,<br>Malabe,<br>Sri
						Lanka</td>
					<td><a href="#"><i class="fa-brands fa-square-facebook"></i></a>
						<a href="#"><i class="fa-brands fa-square-twitter"></i></a> <a
						href="#"><i class="fa-brands fa-square-instagram"></i></a> <a
						href="#"><i class="fa-brands fa-linkedin"></i></a> <br> <br>
						<br> <br>
						<div id="Cpyright">
							<i class="fa-regular fa-copyright"></i>2023 All Rights Reserved
						</div></td>
				</tr>
			</table>
		</div>
	</footer>
</body>
</html>
