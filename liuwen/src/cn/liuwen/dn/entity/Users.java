package cn.liuwen.dn.entity;

import java.io.Serializable;

public class Users implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5654490231657749585L;
	private Integer userId;
	private String userName;
	private String userPass;
	private String userAddress;
	
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	@Override
	public String toString() {
		return "Users [userId=" + userId + ", userName=" + userName
				+ ", userPass=" + userPass + ", userAddress=" + userAddress
				+ "]";
	}
	
	
}
