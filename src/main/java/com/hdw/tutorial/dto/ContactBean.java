package com.hdw.tutorial.dto;

public class ContactBean extends UtilityBean{
	
	private Long id;

	private String mobile; 

	private String email; 

	private String fax;

	private String website; 

	private String line; 

	private String contactType; 

	private String facebook; 

	private String twitter; 

	private String ig;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getLine() {
		return line;
	}
	public void setLine(String line) {
		this.line = line;
	}
	public String getContactType() {
		return contactType;
	}
	public void setContactType(String contactType) {
		this.contactType = contactType;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getTwitter() {
		return twitter;
	}
	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}
	public String getIg() {
		return ig;
	}
	public void setIg(String ig) {
		this.ig = ig;
	}
	
	@Override
	public String toString() {
		return "ContactBean [id=" + id + ", mobile=" + mobile + ", email=" + email + ", fax=" + fax + ", website="
				+ website + ", line=" + line + ", contactType=" + contactType + ", facebook=" + facebook + ", twitter="
				+ twitter + ", ig=" + ig + ", getCreateDate()=" + getCreateDate() + ", getUpdateDate()="
				+ getUpdateDate() + ", getCreateBy()=" + getCreateBy() + ", getUpdateBy()=" + getUpdateBy()
				+ ", getCreateDateTh()=" + getCreateDateTh() + ", getUpdateDateTh()=" + getUpdateDateTh()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
}
