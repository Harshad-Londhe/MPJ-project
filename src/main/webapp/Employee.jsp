<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Dashboard</title>

    <!-- insert g-icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- insert css -->
    <link rel="stylesheet" href="./Admin_Thilina/css/style.css">


</head>
<body>

<!---------------------------------------- SIDEBAR BEGINING ------------------------------------------>
    <%@ include file="Sidebar.jsp" %>
<!------------------------------------------- SIDEBAR END ------------------------------------------>

<div class="main-content-employee">

    <!-- greetings -->
    <div class="greetings">
        <h1>Employee</h1>
    </div>
    <!-- greetings end -->

    <!--table begin-->
    <div class="table-outer">
        <div class="tablewrap-employee">
        <table class="emp">
                <thead>
			        <tr>
			            <th>Employee Id</th>
			            <th>Employee Name</th>
			            <th>Job Title</th>
			            <th>Zone</th>
			            <th>Joining Date</th>
			            <th>Mobile No.</th>
			            <th> Delete </th>
			            <th> Update </th>
			            <th></th>
			        </tr>
                 </thead>
                 <tbody>
                 	<c:forEach var="emp" items="${empDetail_attr}">        
                     <tr>
                     	<td>${emp.id}</td>
                     	<td>${emp.fname}</td>
                     	<td>${emp.job}</td>
                     	<td>${emp.zone}</td>
                     	<td>${emp.join}</td>
                     	<td>${emp.phone}</td>

                     	
                     </tr>
					</c:forEach>
                 </tbody>
                 
                    </table>


        </div>
    </div>

    <!--table end-->

    <!------------ Add a new eployee button --------------->

    <div class="add-emp">

        <a href="#" class="addEmp">
            <span class="btn-text">Add a new employee</span>
            <span class="material-symbols-rounded">person_add</span>
        </a>

        <!-- <button id="addEmp">
            <span class="btn-text">Add a new employee</span>
            <span class="material-symbols-rounded">person_add</span>
        </button> -->

        <!-- <div class="popup1">
            <div class="form-first">
                <div class="form-personal">
                    <h2>Add a new employee</h2>
                    
                    here was the include for from. taken photo at 8:10am
                    

                </div>
            </div>    
        </div> -->



    </div>


</div> <!--main content cloase tag-->

    <!---------------------- insert Javscript here ----------------------->
    <script src="./Admin_Thilina/js/index.js"></script>

</body>
</html>
