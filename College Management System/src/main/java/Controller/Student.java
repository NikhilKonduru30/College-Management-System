package Controller;

import java.util.Date;

public class Student {
    private String Name;
    private String email;
    private String password;
    private String  date;
    private String gender;
    private String course;
    private String address;
	
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		this.Name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(String name, String email, String password, String date, String gender, String course,
			String address) {
		super();
		this.Name = name;
		this.email = email;
		this.password = password;
		this.date = date;
		this.gender = gender;
		this.course = course;
		this.address = address;
	}
	@Override
	public String toString() {
		return "Student [Name=" + Name + ", email=" + email + ", password=" + password + ", date=" + date + ", gender="
				+ gender + ", course=" + course + ", address=" + address + "]";
	}
	
    
}
