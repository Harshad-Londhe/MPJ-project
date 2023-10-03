package projectpackage1;

public class User {
	private int id;
	private String Uname;
	private String email;
	private String fname;
	private String lname;
	private String DoB;
	private String gender;
	private String address;
	private String phone;
	private String pwd;
	
	public User(int id, String uname, String email, String fname, String lname, String doB, String gender,
			String address, String phone, String pwd) {
		//super();
		this.id = id;
		Uname = uname;
		this.email = email;
		this.fname = fname;
		this.lname = lname;
		DoB = doB;
		this.gender = gender;
		this.address = address;
		this.phone = phone;
		this.pwd = pwd;
	}

	public int getId() {
		return id;
	}

	public String getUname() {
		return Uname;
	}

	public String getEmail() {
		return email;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getDoB() {
		return DoB;
	}

	public String getGender() {
		return gender;
	}

	public String getAddress() {
		return address;
	}

	public String getPhone() {
		return phone;
	}

	public String getPwd() {
		return pwd;
	}

}
