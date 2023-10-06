package com.java.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import projectpackage1.DBconnection;


public class UserDBUtil {
	
	private static boolean isSuccess;
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String username, String password, String userType) {
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM "+ userType +" WHERE userName='"+username+"' AND password='"+password+"'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
				
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean createUser(String uname, String email, String fname, String lname, String phone, String pwd) {
		
		boolean isSuccess = false;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO customer VALUES(0,'"+uname+"','"+email+"', '"+fname+"', '"+lname+"', '"+phone+"', '"+pwd+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	

}
