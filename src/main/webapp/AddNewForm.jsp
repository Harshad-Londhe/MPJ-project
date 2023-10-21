<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Emp_form</title>

    <!-- insert g-icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- insert css -->
    <link rel="stylesheet" href="./Admin_Thilina/css/style.css">


</head>
<body>

<h2>Add a new Employee</h2>

<form action="insertform" method="post" class="userform">

    <div class="field">

        <span class="title">Personal Details</span>

        <input type="hidden" name="em_id" value="">

            <p class="input-field-address">
                <label for="">First Name:</label>
                <input type="text" name="first_name" maxlength="50" required>
            </p>

            <p class="input-field-address">
                <label for="">Last Name:</label>
                <input type="text" name="last_name" maxlength="100" required>
            </p>

            <p class="input-field">
                <label for="">birthday:</label>
                <input type="date" name="DOB">
            </p>

            <p class="input-field">
                <label for="">mobile_no:</label>
                <input type="text" name="mobile_no" maxlength="10" required>
            </p>

            <p class="input-field">
                <label for="">gender:</label>
                <select name="gender" id="gender">
				  <option value="male">male</option>
				  <option value="female">female</option>
				</select>
            </p>

            <p class="input-field-address">
                <label for="">Email Address:</label>
                <input type="text" name="email" maxlength="100" required>
            </p>

            <p class="input-field-address">
                <label for="">New Password:</label>
                <input type="password" name="password" maxlength="40" required>
            </p>

            <p class="input-field-address">
                <label for="">Address:</label>
                <input type="text" name="address" maxlength="200" required>
            </p>

        <span class="title">Working Details</span>
        
        	<p class="input-field-address">
                <label for="">User Name:</label>
                <input type="text" name="user_name" maxlength="8" required>
            </p>

            <p class="input-field-address">
                <label for="">Job title:</label>
                <select name="title" id="title">
				  <option value="deliver">Deliver</option>
				  <option value="manager">Manager</option>
				  <option value="driver">Driver</option>
				</select>
            </p>

            <p class="input-field-address">
                <label for="">Join_date:</label>
                <input type="date" name="join_date">
            </p>

            <p class="input-field-address">
                <label for="">Insure:</label>
                <select name="insure" id="insure">
				  <option value="Y">Yes</option>
				  <option value="N">No</option>
				</select>
            </p>

            <p class="input-field-address">
                <label for="">Working Zone:</label>
                <select name="zone" id="zone">
				  <option value="in">In</option>
				  <option value="out">Out</option>
				</select>
            </p>


            <div class="buttons">
                <button type="submit" name="submit" class="submitbtn">
                    <span class="btn-text">Submit</span>
                    <span class="material-symbols-rounded">arrow_outward</span>
                </button>

                <button href="#" class="cancel">
                    <span class="btn-text">Cancel</span>
                    <span class="material-symbols-rounded">close</span>
                </button>
            </div>

            



        </form>

    </div>  <!--inside form field class closing tag-->
        
</div>	<!--popup closing tag-->		
                   



</body>
</html>