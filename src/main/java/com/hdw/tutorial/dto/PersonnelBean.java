package com.hdw.tutorial.dto;

public class PersonnelBean extends UtilityBean{
	
	private Long id;
	private String personnelCode;
	private String firstName;
	private String lastName;
	private String nickName;
	private String sex; //Male or Female
	private String prefix;
	private CompanyBean company;
	private PositionBean position;
	private PermissionGroupBean permissionGroup;
	private ContactBean contact;
	private AuthenticationBean authenticationBean;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPersonnelCode() {
		return personnelCode;
	}
	public void setPersonnelCode(String personnelCode) {
		this.personnelCode = personnelCode;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPrefix() {
		return prefix;
	}
	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}
	public CompanyBean getCompany() {
		return company;
	}
	public void setCompany(CompanyBean company) {
		this.company = company;
	}
	public PositionBean getPosition() {
		return position;
	}
	public void setPosition(PositionBean position) {
		this.position = position;
	}
	public PermissionGroupBean getPermissionGroup() {
		return permissionGroup;
	}
	public void setPermissionGroup(PermissionGroupBean permissionGroup) {
		this.permissionGroup = permissionGroup;
	}
	public ContactBean getContact() {
		return contact;
	}
	public void setContact(ContactBean contact) {
		this.contact = contact;
	}
	public AuthenticationBean getAuthenticationBean() {
		return authenticationBean;
	}
	public void setAuthenticationBean(AuthenticationBean authenticationBean) {
		this.authenticationBean = authenticationBean;
	}
	@Override
	public String toString() {
		return "PersonnelBean [id=" + id + ", personnelCode=" + personnelCode + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", nickName=" + nickName + ", sex=" + sex + ", prefix=" + prefix
				+ ", company=" + company + ", position=" + position + ", permissionGroup=" + permissionGroup
				+ ", contact=" + contact + ", authenticationBean=" + authenticationBean + "]";
	}
	
}
