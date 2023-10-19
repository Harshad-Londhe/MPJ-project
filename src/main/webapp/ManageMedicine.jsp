<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.ArrayList"%> 
<%@page import="com.java.model.Medicine"%> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type = "text/css" href="Manager/css/manageMedicine.css">
    <link rel="stylesheet" type = "text/css" href="Manager/css/common.css">
    
    
     <!-- This are icon for dash board -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <!-- This are icon for dash board -->
    
    <!--scroll reveal effect -->
    <script src="https://unpkg.com/scrollreveal"></script>
    
    <title>Manage Medicines</title>
</head>
<body>
    <div class="container">

        <jsp:include page="/Manager/views/leftPanel.jsp"></jsp:include> 

        <div class="right_panel">

            <div class="upper_panel">
                <div class="upper_panel_left">
                    <h6>Manage Medicines</h6>
                </div>

                <jsp:include page="/Manager/views/upperPanelRight.jsp"></jsp:include>

            </div>

            <div class="middle_panel">
                <div class="left_box">
                        <h6>All Medicines</h6>
                 
                        
                        <div class="grid">
                            <table>
                                <tr>
                                    <th>Med ID</th>
                                    <th>Med Name</th>
                                    <th>Indication</th>
                                    <th>Quantity</th>
                                    <th>Expiry date</th>
                                    <th>Manufacturer</th>
                                    <th>Operation</th>
                                </tr>
                                <c:forEach var="meds" items="${medDets}" >
                                
                                	<c:url value="updateMed.jsp" var="updateMed">
                                		<c:param name="id" value= "${meds.id}"/>
                                		<c:param name="code" value= "${meds.medCode}"/>
                                		<c:param name="name" value= "${meds.medName}"/>
                                		<c:param name="indi" value= "${meds.indication}"/>
                                		<c:param name="qty" value= "${meds.qty}"/>
                                		<c:param name="expDate" value= "${meds.expDate}"/>
                                		<c:param name="price" value= "${meds.price}"/>
                                		<c:param name="manuf" value= "${meds.manufacturer}"/>
                                	</c:url>

	                                <tr>
			
	                					<td>${meds.medCode}</td>
	                					<td>${meds.medName}</td>
	                					<td>${meds.indication}</td>
	                					<td>${meds.qty}</td>
	                					<td>${meds.expDate}</td>
	                					<td>${meds.manufacturer}</td>
	                					
	                					<td> 
                                        	<div class="opBtns">
                                            	<button id="vwBtn"><a href="${updateMed}">View</a></button>
                                           		<button id="dlBtn" onclick="return confirmDelete()"><a href="deleteMedServlet?id=${meds.id}">Delete</a></button>
                                            </div>
                                       </td>
	                					
	                					
	                                </tr>
                            	</c:forEach>
                                
                                

                            </table>

                        </div>
                        
                       
                        
                                                    
                    </div>

                <div class="right_box">
                    <p>Add medicine details</p>
                    <form method="post" action="addMed">
                        <div class="namewrap">
                            <div class="fwrap">
                                <label for="fname">Medicine Code</label><br>
                                <input type="text" name="medcode" id="fname" placeholder="Medicine code" required><br>
                            </div>
                            <div class="lwrap">
                                <label for="lname">Medicine name</label><br>
                                <input type="text" name="fname" id="lname" placeholder="Medicine name" required>
                            </div>
                        </div>
                        <div class="otherwrap">
                            <label for="ind">Indication</label><br>
                            <input type="text" name="ind" id="email" placeholder=" medical conditions or diseases" required><br>
                            <label for="cNo">Quantity</label><br>
                            <input type="number" name="qty" id="cNo" placeholder="Quantity"><br>
                            <label for="pwd">Expire Date</label><br>
                            <input type="text" name="exp" id="pwd" placeholder="Expiry Date" required><br>
                          	<label for="pwd">price</label><br>
                            <input type="number" name="price" id="pwd" placeholder="Price" required><br>
                            <label for="pwd">Manufacturer</label><br>
                            <input type="text" name="manuf" id="pwd" placeholder="Manufacturer" required><br>
                            
                            <span id="err">Password does not matched</span>
                            <input type="checkbox" id="checkbox"><span class="pwdtxt">Show Password</span>
                            
                                
                          <input type="submit" value="Create" id="sbt" name="submit"><br>
                        </div>
                                  
                    </form>
                            
                </div>
                
                                       
                 
            </div>
        </div>
        
    </div>

    
    <script src="/Manager/Js/manager.js"></script>
    <script>
        ScrollReveal({
            reset: true,
            distance: '60px',
            duration: 2500,
            delay: 400
        });

        ScrollReveal().reveal('.left_box', {delay: 200, origin: 'left'});
        ScrollReveal().reveal('.right_box', {delay: 200, origin: 'right'});
        ScrollReveal().reveal('.upper_box', {delay: 200, origin: 'top'});
        
    </script>
</body>
</html>






</body>
</html>