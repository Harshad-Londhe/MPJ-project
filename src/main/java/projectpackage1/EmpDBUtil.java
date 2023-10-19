package projectpackage1;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class EmpDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertEmp(String fname, String lname, String dob, String phone, String gender, String email, String pwd, String add, String job, String join, String insure, String zone) {
		
		boolean isSuccess = false;
		
		//create database connection
		try {
			con = DBconnectThil.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into emp values(0, '"+fname+"', '"+lname+"', '"+dob+"', '"+phone+"', '"+gender+"', '"+email+"', '"+pwd+"', '"+add+"', '"+job+"', '"+join+"', '"+insure+"', '"+zone+"')";
			int rst = stmt.executeUpdate(sql);
			
			if(rst > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	} //INSERT EMp CLOSE tag
	
	
	

}
