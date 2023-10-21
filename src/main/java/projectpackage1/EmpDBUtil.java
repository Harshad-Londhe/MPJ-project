package projectpackage1;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
	
	public static List<Employee> getEmpDetails(String Id){
		
		int convertedId = Integer.parseInt(Id);
		
		ArrayList<Employee> emp = new ArrayList<>();
		
		try {
			con = DBconnectThil.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from emp where id = '"+convertedId+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String dob =  rs.getString(4);
				String phone = rs.getString(5);
				String gender = rs.getString(6);
				String email = rs.getString(7);
				String pwd =  rs.getString(8);
				String add =  rs.getString(9);
				String job =  rs.getString(10);
				String join = rs.getString(11);
				String insure = rs.getString(12);
				String zone = rs.getString(13);
				
				Employee e = new Employee(id,fname,lname,dob,phone,gender,email,pwd,add,job,join,insure,zone);
				emp.add(e);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return emp;
	}
	

}
