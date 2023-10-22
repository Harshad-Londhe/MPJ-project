<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 
        
<div class="sidebar">
        <div class="top">
            <div class="logo">
                <!-- logo -->
                <img src="images/logo1.png" alt="company_logo" class="logoimg">
                <span>ABC Pharmacy</span>
            </div>
            <!-- menu btn -->
            <span class="material-symbols-rounded" id="btn">menu</span>
        </div>
        <div class="user">
            <img src="images/userIMG.jpg" alt="user_pic" class="userimg">
            <div>
                <p class="bold">my name here</p>
                <p>my g-mail here</p>
            </div>
        </div>
        <ul>
            <li>
                <a href="AdminDb.jsp">
                    <span class="material-symbols-rounded">grid_view</span>
                    <span class="nav_item">Dashboard</span>
                </a>
                <span class="tooltip">Dashboard</span>
            </li>
            <li>
                <a href="Employee.jsp">
                    <span class="material-symbols-rounded">badge</span>
                    <span class="nav_item">Employee</span>
                </a>
                <span class="tooltip">Employee</span>
            </li>
            <li>
                <a href="#">
                    <span class="material-symbols-rounded">order_approve</span>
                    <span class="nav_item">Orders</span>
                </a>
                <span class="tooltip">Orders</span>
            </li>
            <li>
                <a href="#">
                    <span class="material-symbols-rounded">local_shipping</span>
                    <span class="nav_item">Deliver</span>
                </a>
                <span class="tooltip">Deliver</span>
            </li>
            <li>
                
            </li>
        </ul>
        <div class="logout">
            <a href="logout.php">
                <span class="material-symbols-rounded">logout</span>
                <span class="nav_item">Logout Now</span>
            </a>
            <span class="tooltip">Logout</span>
        </div>
    </div>