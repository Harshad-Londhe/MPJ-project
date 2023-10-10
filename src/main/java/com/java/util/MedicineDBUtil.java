package com.java.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import projectpackage1.DBconnection;
import projectpackage1.DBconnectionManager;

public class MedicineDBUtil {
		private static boolean isSuccess;
		
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		public static boolean addMed(String code, String name, String ind, int qty, String expD, double price, String manuf) {
			
			boolean isSuccess = false;
			
			try {
				con = DBconnectionManager.getConnection();
				stmt = con.createStatement();
				
				String sql = "INSERT INTO medicine VALUES(0,'"+code+"','"+name+"', '"+ind+"', '"+qty+"', '"+expD+"', '"+price+"', '"+manuf+"' )";
				
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
