package projectpackage1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
	
	public static List<User> validate(String userName, String password){
		
		ArrayList<User> us = new ArrayList<>();
		
		return us;
	} 
	
	public static boolean createUser(String uname, String email, String fname, String lname, String doB, String gender,
			String address, int phone, String pwd) {
		
		boolean isSuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/javaproj2y1s";
		String user = "root";
		String pass = "1230";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "INSER INTO user VALUES(0,'"+uname+"','"+email+"', '"+lname+"', '"+doB+"', '"+gender+"', '"+address+"',"+phone+", '"+pwd+"')";
			
			
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
