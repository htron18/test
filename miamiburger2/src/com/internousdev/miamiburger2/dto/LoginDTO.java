package com.internousdev.miamiburger2.dto;

public class LoginDTO {
	private int id;
	private String userId;
	private String password;
	private String tempUserId;
	private boolean logined=false;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTempUserId() {
		return tempUserId;
	}
	public void setTempUserId(String tempUserId) {
		this.tempUserId = tempUserId;
	}
	public boolean getLogined() {
		return logined;
	}
	public void setLogined(boolean logined) {
		this.logined = logined;
	}


}
