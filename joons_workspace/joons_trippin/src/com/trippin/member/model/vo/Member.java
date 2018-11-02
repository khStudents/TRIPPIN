package com.trippin.member.model.vo;

import java.sql.Date;

public class Member {
	private String email;
	private String userPwd;
	private String userName;
	private String birthDate;
	private String phone;
	private char active;
	private Date enrollDate;
	
	

	public Member() {
		// TODO Auto-generated constructor stub
	}
	

	public Member(String email, String userPwd, String userName, String birthDate, String phone, char active,
			Date enrollDate) {
		super();
		this.email = email;
		this.userPwd = userPwd;
		this.userName = userName;
		this.birthDate = birthDate;
		this.phone = phone;
		this.active = active;
		this.enrollDate = enrollDate;
	}


	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public char getActive() {
		return active;
	}

	public void setActive(char active) {
		this.active = active;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	
}
