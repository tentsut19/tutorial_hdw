package com.hdw.tutorial.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="tb_personnel")
public class Personnel {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)
	private Long id;
	
	@Column(name = "personnelCode", nullable=false, length=20)
	private String personnelCode;
	
	@Column(name = "firstName", nullable=false, length=200)
	private String firstName; 
	
	@Column(name = "lastName", nullable=false, length=200)
	private String lastName;
	
	@Column(name = "nickName", nullable=true, length=200)
	private String nickName;
	
	@Column(name = "sex", nullable=false, length=6)
	private String sex; //Male or Female
	
	@Column(name = "prefix", nullable=false, length=120)
	private String prefix;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createDate", nullable=false)
	private Date createDate;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updatedDate")
	private Date updatedDate;
	
	@Column(name = "createdBy", nullable=false, length=150)
	private String createdBy;
	
	@Column(name = "updatedBy", length=150)
	private String updatedBy;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="companyId", nullable=false)
	private Company company;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="positionId", nullable=false)
	private Position position;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="permissionGroupId", nullable=false)
	private PermissionGroup permissionGroup;
	
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "personnel", cascade = CascadeType.ALL)
	private Contact contact;
	
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "personnel", cascade = CascadeType.ALL)
	private Authentication authentication;
	
	@Column(name = "isDeleted")
	private boolean isDeleted;

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

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}

	public PermissionGroup getPermissionGroup() {
		return permissionGroup;
	}

	public void setPermissionGroup(PermissionGroup permissionGroup) {
		this.permissionGroup = permissionGroup;
	}

	public Contact getContact() {
		return contact;
	}

	public void setContact(Contact contact) {
		this.contact = contact;
	}

	public Authentication getAuthentication() {
		return authentication;
	}

	public void setAuthentication(Authentication authentication) {
		this.authentication = authentication;
	}

	public boolean isDeleted() {
		return isDeleted;
	}

	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	
}
