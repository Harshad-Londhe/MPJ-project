<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <link rel="stylesheet" type = "text/css" href="Manager/css/common.css">
    <link rel="stylesheet" type = "text/css" href="Manager/css/updateMed.css">
    
    <!-- This are icon for dash board -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    
    <!-- This are icon for dash board -->
    
    <!-- scroll reveal effect -->
    <script src="https://unpkg.com/scrollreveal"></script>
    <!-- scroll reveal effect -->
   
    
	<title>View Medicine</title>
</head>
<body>

	<%
	
		int id = Integer.parseInt(request.getParameter("id"));
		String code = request.getParameter("code");
		String name = request.getParameter("name");
		String indi = request.getParameter("indi");
		int qty = Integer.parseInt(request.getParameter("qty"));
		String expDate = request.getParameter("expDate");
		double price = Double.parseDouble(request.getParameter("price"));
		String manuf = request.getParameter("manuf");
	
	%>
	
	
	<div class="container">

        <jsp:include page="/Manager/views/leftPanel.jsp"></jsp:include> 

        <div class="right_panel">

            <div class="upper_panel">
                <div class="upper_panel_left">
                    <h6>View Medicine</h6>
                </div>

                <jsp:include page="/Manager/views/upperPanelRight.jsp"></jsp:include>

            </div>
    

            <div class="middle_panel">
                <div class="left_box">
                    
                        
                    

                    <div class="profile">

                        <div class="pImg">
                            
                            
                            <span>this is the image</span>
                            
                            <!-- <img src="uploads/profile logo.png" alt="profile"> -->
                        </div>

                        <div class="details">
                        

                            <div class="detBox">
                                <p>First Name:<%=name%></p>
                            </div>

                            <div class="detBox">
                                <p>Medicine Code:<%=code %></p>
                            </div>

                            <div class="detBox">
                                <p>Manufacturer:<%=manuf %></p>
                            </div>

                            <div class="detBox">
                                <p>Quantity:<%=qty %></p>
                            </div>
                            <div class="detBox">
                                <p>Price:<%=price %></p>
                            </div>
                            <div class="detBox">
                                <p>Expiry Date:<%=expDate %></p>
                            </div>

                        </div>

                    </div>
                   

                    
                     
                </div>

                <div class="right_box">
                
                
                
                    <p>Update <?php echo $Name."'s"; ?> Account</p>
                    <form method="POST" action="updateMed">
                        <div class="namewrap">
                            <div class="fwrap">
                                <label for="fname">Medicine Code</label><br>
                                <input type="text" name="medcode" id="fname" value="<%=code %>" >
                            </div>
                            <div class="lwrap">
                            	<label for="lname">Medicine Name</label><br>
                                <input type="text" name="fname" id="lname" value="<%=name %>">
                            </div>
                        </div>
                        <div class="otherwrap">
                            <label for="email">Indication</label><br>
                            <input type="text" name="ind" id="email" value="<%=indi %>"><br>
                            <label for="cNo">Quantity</label><br>
                            <input type="number" name="qty" id="cNo" value="<%=qty %>"><br>
                            <label for="pwd">Expire Date</label><br>
                            <input type="text" name="exp" id="pwd" value="<%=expDate %>"><br>
                            <label for="cpwd">Price</label><br>
                            <input type="number" name="price" id="cpwd" value="<%=price %>"><br>
                            <label for="pwd">Manufacturer</label><br>
                            <input type="text" name="manuf" id="pwd" placeholder="Manufacturer" value="<%=manuf %>"><br>
                            
                            <span id="err">Password does not matched</span>
                            <input type="checkbox" id="checkbox"><span class="pwdtxt">Show Password</span>
                         
                            <input type="submit" value="Update" id="sbt" name="submit" onclick="return confirmUpdate('<?php echo $row['fname']?>')"><br>

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