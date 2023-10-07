<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type = "text/css" href="Manager/css/manageOrders.css">
    <link rel="stylesheet" type = "text/css" href="Manager/css/common.css">
    
    
     <!-- This are icon for dash board -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <!-- This are icon for dash board -->
    
    <!--scroll reveal effect -->
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
                                </tr>
                                

                            </table>

                        </div>
                        
                       
                        
                                                    
                </div>
                              
                 
            </div>
        </div>
        
    </div>
		

</body>
</html>