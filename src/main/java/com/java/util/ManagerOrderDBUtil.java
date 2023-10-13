package com.java.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.java.model.ManagerOrder;

import projectpackage1.DBconnection;


public class ManagerOrderDBUtil {
	private static boolean isSuccess;
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean createMOrder(String managerId, String FcurrentDate, String itemAndqty, String itemDesc) {
		
		boolean isSuccess = false;
		
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO managerorders VALUES(0,'"+managerId+"', '"+FcurrentDate+"', '"+itemAndqty+"', '"+itemDesc+"', 'Pending')";
			
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
	
	public static List<ManagerOrder> getMOrder(String managerID){
		
		ArrayList<ManagerOrder> mangerOrd = new ArrayList<>();
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM managerorders WHERE managerID = '"+managerID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int Oid = rs.getInt(1);
				String Mid = rs.getString(2);
				String ordDate = rs.getString(3);
				String itemQty = rs.getString(4);
				String ordDescrip = rs.getString(5);
				String ordStatus = rs.getString(6);
				
				ManagerOrder mngOrd = new ManagerOrder(Oid, Mid, ordDate, itemQty, ordDescrip, ordStatus);
				
				mangerOrd.add(mngOrd);
				
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return mangerOrd;
	}
	
	
	public static List<ManagerOrder> getAllOrders(){
		
		ArrayList<ManagerOrder> allOrd = new ArrayList<>();
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM managerorders";
			
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int Oid = rs.getInt(1);
				String Mid = rs.getString(2);
				String ordDate = rs.getString(3);
				String itemQty = rs.getString(4);
				String ordDescrip = rs.getString(5);
				String ordStatus = rs.getString(6);
				
				ManagerOrder aOrd = new ManagerOrder(Oid, Mid, ordDate, itemQty, ordDescrip, ordStatus);
				
				allOrd.add(aOrd);
				
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return allOrd;
	}
		
    public static boolean updateOrderStatus(int orderId, String newStatus) {
        boolean isSuccess = false;

        try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
            String sql = "UPDATE managerorders SET orderStatus = '"+newStatus+"' WHERE mOrderID = '"+orderId+"'";

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












