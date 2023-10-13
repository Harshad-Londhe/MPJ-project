package projectpackage1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class EmpDBUtil {
	
	public static boolean insertEmp(String fname, String lname, String dob, String phone, String gender, String email, String pwd, String add, String job, String join, String insure, String zone) {
		
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/testmed";
		String user = "root";
		String pass = "Admin@121";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into emp values(0, '"+fname+"', '"+lname+"', '"+dob+"', '"+phone+"', '"+gender+"', '"+email+"', '"+pwd+"', '"+add+"', '"+job+"', '"+join+"', '"+insure+"', '"+zone+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}

}
