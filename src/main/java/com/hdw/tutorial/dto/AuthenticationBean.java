package com.hdw.tutorial.dto;

public class AuthenticationBean extends UtilityBean{
	private String username;
	private String password;
	private PersonnelBean personnel;
	private boolean enabled;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public PersonnelBean getPersonnel() {
		return personnel;
	}
	public void setPersonnel(PersonnelBean personnel) {
		this.personnel = personnel;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	@Override
	public String toString() {
		return "AuthenticationBean [username=" + username + ", password=" + password + ", personnel=" + personnel
				+ ", enabled=" + enabled + "]";
	}
	
}
