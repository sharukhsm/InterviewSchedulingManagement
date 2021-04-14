package com.project.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Admin {
	
	@Id
	private int adminId;
	private String password;
	
	
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", password=" + password + "]";
	}
	
	 
}
