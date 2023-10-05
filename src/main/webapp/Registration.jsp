<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--Registration Page-->
<!--Coded by IT22603586 Aponso G.I.A-->

<!--LINE NO 246 FORM BEGINS-->


<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>OMOS</title>

        <!--To add CSS file-->
        <style>
            /*body*/
body {
  background-color: #ffffff;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
}

/*header section styles BEGINS*/
#logo {
  float:left;
}

.headTopic {
  text-align: center;
  position: relative;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

#mainHeading {
  font-weight: bolder;
  color: #004b73;
}

#slogan {
  font-weight: bold;
  color: #4ea6c8;
}

.AlreadyAcc {
  float: right;
  
}

.LRB {
  background-color: #004b73;
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
  border-radius: 2px;
}

/* colors to use:
   #B799FF
   #ACBCFF
   #AEE2FF
   #E6FFFD
  } */

.Line {
  background-color: #4ea6c8;
  display: flex;
  justify-content: flex-start;
  padding: 10px;
  margin-bottom: 10px;
}

h1 {
  color: #004b73;
}

/*Form Styles*/
fieldset {
  border-color: #004b73;
}

#subbtn {
  background-color: #004b73;
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
  border-radius: 2px;
}

#clear {
  background-color: #4ea6c8;
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
  border-radius: 2px;
}

input[type=text], select, input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px;
  display: inline-block;
  border: 1px solid #AEE2FF;
  border-radius: 4px;
  box-sizing: border-box;
}

#DOB {
  width: 30%;
  padding: 12px 20px;
  margin: 8px;
  display: inline-block;
  border: 1px solid #AEE2FF;
  border-radius: 4px;
  box-sizing: border-box;

}

#address {
  width: 100%;
  padding: 12px 20px;
  margin: 8px;
  display: inline-block;
  border: 1px solid #AEE2FF;
  border-radius: 4px;
  box-sizing: border-box;
}

#ms {
  width: 20%;
  padding: 12px 20px;
  margin: 8px;
  display: inline-block;
  border: 1px solid #AEE2FF;
  border-radius: 4px;
  box-sizing: border-box;
}

#phone-number {
  width: 30%;
  padding: 12px 20px;
  margin: 8px;
  display: inline-block;
  border: 1px solid #AEE2FF;
  border-radius: 4px;
  box-sizing: border-box;
}

#psw, #cpsw {
  width: 50%;
  padding: 12px 20px;
  margin: 8px;
  display: inline-block;
  border: 1px solid #AEE2FF;
  border-radius: 4px;
  box-sizing: border-box;
}

.FormButtons {
  float: right;
}

#TermCon {
  background-color: #ACBCFF;
}

#Reg {
  background-color: #004b73;
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
  border-radius: 2px;
  float: right;
}


/*Footer Styles BEGINS*/
footer {
  background-color: #4ea6c8;
  padding: 20px;
}

.footTable {
  text-align: left;
}

#Cpyright {
  float: right;
}
/*Footer Styles ENDS*/



 
        </style>

        <!--To add Icons-->
        <script src="https://kit.fontawesome.com/8d1ac6ad03.js" crossorigin="anonymous"></script>
    </head>

    <body>

        <!--Header section-->
        <table width="100%">
            <tr>
                <td width="20%">
                    <img src="Images/logo.png" alt="logo" width="60%" height="60%" id="logo">
                </td>

                <td width="50%">
                    <div class="headTopic">
                        <h1 id="mainHeading">OMOS</h1>
                        <h3 id="slogan">&nbsp;&nbsp;bla bla bla bla black ship !</h3>
                    </div>
                </td>

                <td width="20%">
                    <div class="AlreadyAcc">
                        <a href="LoginPage.html">Already have an account?</a>
                        <a href="LoginPage.html"><button class="LRB">Login</button></a>
                    </div>
                </td>
            </tr>
        </table>

        <div class="Line">
            <!--Just to Take A empty NavBar-->
        </div>

        <br>
    
        <h1>Register</h1>

            <!--Registration Form Begins-->
            <fieldset>
                <form method="post" action="reg">
                    <label for="Uname"><b>User Name</b></label>
                    <input type="text" placeholder="Enter User Name" name="Uname" id="Uname" required>

                    <br><br>

                    <label for="email"><b>Email</b></label>
                    <input type="text" placeholder="Enter Email" name="email" id="email" pattern="[^\s@]+@[^\s@]+\.[^\s@]+" required>

                    <br><br>

                    <label for="Fname"><b>First Name</b></label><br>
                    <input type="text" placeholder="Enter First Name" name="Fname" id="Fname" required>

                    <br><br>

                    <label for="Lname"><b>Last Name</b></label>
                    <input type="text" placeholder="Enter Last Name" name="Lname" id="Lname" required>

                    <br><br>

                    <%--<label for="DOB"><b>Age</b></label>
                    <input type="date" placeholder="Enter DoB" name="Dob" id="DOB" required>

                    <br><br>--%>
                    

                    <%--<label for="gender"><b>Gender</b></label>
                    <input type="radio" name="gender" id="gender" value="Male">
                    <label for="male">Male</label>
                    <input type="radio" name="gender" id="gender" value="Female">
                    <label for="female">Female</label>
					
                    <br><br>

                    <label for="address"><b>Address</b></label><br>
                    <textarea placeholder="Enter Address" name="address" id="address" rows="4" cols="50"></textarea>

                    <br><br>--%>

                    <label for="phone-number"><b>Phone Number</b></label>
                    <input type="tel" placeholder="0" name="phone-number" id="phone-number" pattern="[0-9]{10}" required>

                    <br><br>

                    <label for="psw"><b>Password</b></label>
                    <input type="password" id="psw" name="psw" class="pw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br>

                    <br><br>

                    <label for="psw"><b>Confirm Password</b></label>
                    <input type="password" id="cpsw" name="psw" class="pw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br><br>

                    <br>

                    <input type="radio" name="pwview" id="view" value="view" onclick="viewPassword()">
                    <label for="viewe"><i class="fa-sharp fa-solid fa-eye"></i></label>
                    <input type="radio" name="pwview" id="view" value="hide" onclick="hidePassword()">
                    <label for="hide"><i class="fa-solid fa-eye-slash"></i></label>

                    <br><br>

                    
                    <br><br>
                    
                    <div class="FormButtons">
                        <input type="submit" value="submit" id="subbtn" name="submit">
    
                        <input type="button" value="clear" id="clear">
                    </div>

                </form>
            </fieldset>
            <!--Registration Form Ends-->
        <br><br>
       
        <!--Footer BEGINS-->
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
        <!--Footer ENDS-->


        <!--THE JAVA SCRIPT FILE OF THE PAGE-->
        <script>
            //Registration Form JS
function viewPassword() {
    var vpsw = document.getElementsByClassName("pw");
  
    for (var i = 0; i < vpsw.length; i++) {
      vpsw[i].type = "text";
    }
  }
  
  function hidePassword() {
    var hpsw = document.getElementsByClassName("pw");
  
    for (var i = 0; i < hpsw.length; i++) {
      hpsw[i].type = "password";
    }
  }

function checkPassword()
{
    var pw = document.getElementById("psw").value;
    var cpw = document.getElementById("cpsw").value;

    if(pw == cpw){
        allert("Success!");
    }
    
    else if(pw != cpw){
        allert("Password Mismatch!!");
    }
}

function checkDoB()
{
    let dob = document.getElementById("DOB").value;
    const d = new Date(dob);
    const thisYear = new Date();

    let ageToThisYear = thisYear.getFullYear() - d.getFullYear();
    
    if(ageToThisYear < 18){
        alert("You must be at least 18 years old to register.");
        subbtn.disabled = true;
    }
}

<%--function enableButton()
{
    var accept = document.getElementById("accept");
    var subbtn = document.getElementById("subbtn");

    if(accept.checked == true){
        subbtn.disabled = false;
    }

    else{
        subbtn.disabled = true;
    }

}

function enableButton()
{
    var accept = document.getElementById("accept");
    var subbtn = document.getElementById("subbtn");

    if(accept.checked == true){
        subbtn.disabled = false;
    }

    else{
        subbtn.disabled = true;
    }

}--%>


        </script>

    </body>
    </html>