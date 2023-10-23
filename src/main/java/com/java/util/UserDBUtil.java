package com.java.util;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.java.model.User;

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
			
			if("customer".equals(userType)) {
				String sql = "SELECT * FROM  customer  WHERE userName='"+username+"' AND password='"+password+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			}
			
			else {
				String sql = "SELECT * FROM emp WHERE username='"+username+"' AND pwd='"+password+"' AND job='"+userType+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			}
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean createUser(String uname, String email, String fname, String lname, String address, String gender, String birthdate,String phone, String pwd) {
		
		boolean isSuccess = false;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO customer VALUES(0,'"+uname+"','"+email+"', '"+fname+"', '"+lname+"', '"+address+"', '"+gender+"', '"+birthdate+"', '"+phone+"', '"+pwd+"')";
			
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
	
	public static User getUser(String un) {
		User user = null;;
		

		try {
            String query = "select * from omos.customer where userName=?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, un);
            rs = pst.executeQuery();
            if(rs.next()){
            	int id = rs.getInt(1);
            	String uname = rs.getString(2);
            	String email = rs.getString(3);
            	String fname = rs.getString(4);
            	String lname = rs.getString(5);
            	String address = rs.getString(6);
            	String gender = rs.getString(7);
            	String dob = rs.getString(8);
            	String phone = rs.getString(9);
            	String pwd = rs.getString(10);
            	

            	user = new User(id, uname, email, fname, lname, address, gender, dob, phone, pwd);
            	
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
		
		return user;
	}
	
	public static boolean updateUser(String uname, String email, String fname, String lname, String address, String birthdate,String phone, String pwd) {
		boolean isSuccess = false;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "update omos.customer set userName = '"+uname+"', email = '"+email+"', fname = '"+fname+"', lname = '"+lname+"', address = '"+address+"', dob = '"+birthdate+"', phone = '"+phone+"', password = '"+pwd+"' where userName = '"+uname+"'" ;
			
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
	
	
	public static int countCustomers() {
		
		int count = 0;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT COUNT(*) FROM customer";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
	            count = rs.getInt(1);
	            
	        }
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	

}
