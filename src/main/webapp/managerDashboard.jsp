<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.*"%> 
<%@page import="com.java.model.Medicine"%> 
<%@page import="projectpackage1.DBconnection"%>
<%@page import="com.java.util.MedicineDBUtil"%>

<% 

	String username = (String) session.getAttribute("username");
	int medCount = MedicineDBUtil.countMedi();

%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type = "text/css" href="Manager/css/dashboard.css">
    <link rel="stylesheet" type = "text/css" href="Manager/css/common.css">
    

    
    <!-- This are icon for dash board -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- This are icon for dash board -->


    <!-- scroll reveal effect -->
    <script src="https://unpkg.com/scrollreveal"></script>
    <!-- scroll reveal effect -->
    
    
    <title>Manager Dashboard</title>
    
   
</head>
<body>
<div class="container">

 
       <%-- <jsp:include page="/WEB-INF/views/leftPanel.jsp"></jsp:include>  --%> 
        <jsp:include page="/Manager/views/leftPanel.jsp"></jsp:include> 

        <div class="right_panel">

            
            <div class="upper_panel">
                <div class="upper_panel_left">
                    <h6>Dashboard</h6>
                </div>

            
            <jsp:include page="/Manager/views/upperPanelRight.jsp"></jsp:include>

            </div>
            
            <div class="greeting">
                <p class="head">Welcome <%=username %></p>
            </div>
            
            <div class="middle_panel">
                <div class="upper_box">
                    

                    <div class="box">
                        <h6>Total Medicines</h6>
                        <p class="val"><%=medCount %></p>
                        <p class="date"></p>
                    </div>
                    <div class="box">
                        
                        <h6>Total eMPLOYEES</h6>
                        <p class="val"></p>
                        <p class="date"></p>
                    </div>
                    <div class="box">
                        <h6>Total Orders</h6>
                        <p class="val"></p>
                        <p class="date"></p>
                    </div>
                    <div class="box">
                        <h6>Medicine Count</h6>
                        <p class="val"></p>
                        <p class="date"></p>
                    </div>
                </div>

                <div class="lower_boxes">
                    
                    <div class="left_box">
                        
                        <h6>Safari Bookings</h6>

                        <div class="grid">

                        
                            <table>
                                <tr>
                                    <th>Booking ID</th>
                                    <th>Date</th>
                                    <th>Customer</th>
                                    <th>Trip</th>

                                </tr>

                            
                                

                            </table>
                        </div>

                        
                        
                                                
                    </div>

                    <div class="right_box">
                        
                        <h6>Customer Feedback</h6>  
                        
                         <div class="feedBox">
                            
                            
                         </div>
                                       
                    </div>


                </div>
                
            </div>
        </div>
        
    </div>
   
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