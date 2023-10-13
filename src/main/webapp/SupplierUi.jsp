<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type="text/css" href="Manager/css/manageOrders.css">
    <link rel="stylesheet" type="text/css" href="Manager/css/common.css">
    
    <!-- Icons for dashboard -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <!-- Scroll reveal effect -->
    <script src="https://unpkg.com/scrollreveal"></script>
    
    <title>Manage Orders</title>
</head>
<body>
    <div class="container">
        <jsp:include page="/Manager/views/leftPanel.jsp"></jsp:include> 

        <div class="right_panel">
            <div class="upper_panel">
                <div class="upper_panel_left">
                    <h6>Manage Users</h6>
                </div>

                <jsp:include page="/Manager/views/upperPanelRight.jsp"></jsp:include>
            </div>
			<form action="supp" method="post">
    			<input type="submit" value="Trigger Servlet">
			</form>

            <div class="middle_panel">
                <div class="left_box">
                    <h6>All Medicines</h6>
                    <div class="grid">
                    
                        <table border="1">
                            <tr>
                                <th>Order ID</th>
                                <th>Manager ID</th>
                                <th>Order Date</th>
                                <th>Item and Quantity</th>
                                <th>Item Description</th>
                                <th>Order Status</th>
                            </tr>
                            <c:forEach var="MordDetails" items="${dataForSupplier}">
                                <tr>
                                    <td>${MordDetails.id}</td>
                					<td>${MordDetails.managerID}</td>
                					<td>${MordDetails.orderDate}</td>
                					<td>${MordDetails.itemAndqty}</td>
                					<td>${MordDetails.itemDesc}</td>
                					
                					<td><form action="ordSt" method="post">
                                            <input type="hidden" name="orderId" value="${MordDetails.id}">
                                            <input type="submit" name="action" value="Accepted">
                                            <input type="submit" name="action" value="Rejected">
                                        </form>
                					</td>
                					
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
                