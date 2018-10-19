package com.trippin.member.model.vo;

public class Member {
	private String userId;
	private String userPwd;
	private String userName;
	private String birthDate;
	private String phone;
	private String email;
	public String getUserId() {
		return userId;
	}
	
	
	public Member(String userId, String userPwd, String userName, String birthDate, String phone, String email) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.birthDate = birthDate;
		this.phone = phone;
		this.email = email;
	}


	public void setUserId(String userId) {
		this.userId = userId;
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
	
	
}
