<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Registration Page -->
<!-- Coded by IT22603586 Aponso G.I.A -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>OMOS</title>

    <!-- To add CSS file -->
    <link rel="stylesheet" type="text/css" href="LoginRegistration/css/loginPage.css">
    <style>
        .adminsqr {
            width: 200px;
            height: 200px;
            background-color: #3498db;
            color: #fff;
            text-align: center;
            line-height: 200px;
            font-size: 24px;
            margin: 10px;
            display: inline-block;
            cursor: pointer;
            text-decoration: none; /* Remove underline from links */
        }
        .adminsqr:hover {
            background-color: #2980b9; /* Change color on hover */
        }
    </style>

    <!-- To add Icons -->
    <script src="https://kit.fontawesome.com/8d1ac6ad03.js" crossorigin="anonymous"></script>
</head>
<body>

    <!-- Header section -->
    <table width="100%">
        <tr>
            <td width="20%">
                <img src="Images/logo.png" alt="logo" width="60%" height="60%" id="logo">
            </td>

            <td width="50%">
                <div class "headTopic">
                    <h1 id="mainHeading">OMOS</h1>
                    <h3 id="slogan">&nbsp;&nbsp;Your Health, Our Priority, One Click Away.</h3>
                </div>
            </td>

            <td width="20%">
                <div class="AlreadyAcc">
                    <a href="RegistrationForm.html">Does not have an account?</a>
                    <a href="RegistrationForm.html"><button class="RRB">Register</button></a>
                </div>
            </td>
        </tr>
    </table>

    <div class="Line">
        <!-- Just to Take An empty NavBar -->
    </div>

    <br>

    <h1>View orders</h1>
    
    <center>
    <div id="MainBoxes">
    	<form action="supp" method="post" class="adminsqr">
    			<input type="submit" value="Trigger Servlet">
			</form>
        
    </div>
    </center>
    
    <br><br>
   
    <!-- Footer Begins -->
    <footer>
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

                <td>
                    <a href="AboutUs.html">About Us</a>
                </td>
                <td>
                    <i class="fa-solid fa-phone"></i> +94704484574<br><br>
                    <i class="fa-solid fa-envelope"></i> omos@info.lk <br><br>
                    <i class="fa-solid fa-fax"></i> +94112123123 <br><br>
                </td>
                <td>
                    <i class="fa-solid fa-location-dot"></i> New,<br>SLIIT,<br>Malabe,<br>Sri Lanka
                </td>
                <td>
                    <a href="#"><i class="fa-brands fa-square-facebook" style="font-size:30px;"></i></a>
                    <a href="#"><i class="fa-brands fa-square-twitter" style="font-size:30px;"></i></a>
                    <a href="#"><i class="fa-brands fa-square-instagram" style="font-size:30px;"></i></a>
                    <a href="#"><i class="fa-brands fa-linkedin" style="font-size:30px;"></i></a> 
                    <br><br><br><br>
                    <div id="Cpyright"><i class="fa-regular fa-copyright"></i>2023 All Rights Reserved</div>
                </td>
            </tr>
        </table>
    </footer>
    <!-- Footer Ends -->

    <!-- The JavaScript File of the Page -->
    <script src="./LoginRegistration/js/login.js"></script>

</body>
</html>
