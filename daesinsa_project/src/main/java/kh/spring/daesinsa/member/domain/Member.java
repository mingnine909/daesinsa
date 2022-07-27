package kh.spring.daesinsa.member.domain;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@SuppressWarnings("serial")
@Component

public class Member implements Serializable {
	
	
//	M_ID         NOT NULL VARCHAR2(20)  
//	M_PWD        NOT NULL VARCHAR2(20)  
//	M_NAME       NOT NULL VARCHAR2(20)  
//	M_EMAIL      NOT NULL VARCHAR2(50)  
//	M_PHONE      NOT NULL VARCHAR2(20)  
//	M_ADRS       NOT NULL VARCHAR2(300) 
//	M_GENDER     NOT NULL NUMBER        
//	M_BDATE      NOT NULL DATE          
//	M_ENROLLDATE NOT NULL TIMESTAMP(6)  
//	M_ISDELETE   NOT NULL NUMBER        
//	M_DELREASON           NUMBER        
//	M_DELDATE             DATE  
//  AUTH		 NOT NULL VARCHAR(50)
//  ENABLED		 NOT NULL NUMBER
//  M_ADR2               VARCHAR2(300)
//  M_ZIPCODE	 NOT NULL NUMBER

	private String id; 
	private String password;
	private String name;
	private String email;
	private String phone;
	private String adrs;
	private String adrs2;
	private int gender;
	private String bdate;
	private String enrolldate;
	private int isdelete;
	private int delreason;
	private String deldate;
	private String auth;
	private int enabled;
	private int zipcode;
	
	@Override
	public String toString() {
		return "Member [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + ", phone="
				+ phone + ", adrs=" + adrs + ", adrs2=" + adrs2 + ", gender=" + gender + ", bdate=" + bdate
				+ ", enrolldate=" + enrolldate + ", isdelete=" + isdelete + ", delreason=" + delreason + ", deldate="
				+ deldate + ", auth=" + auth + ", enabled=" + enabled + ", zipcode=" + zipcode + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAdrs() {
		return adrs;
	}

	public void setAdrs(String adrs) {
		this.adrs = adrs;
	}

	public String getAdrs2() {
		return adrs2;
	}

	public void setAdrs2(String adrs2) {
		this.adrs2 = adrs2;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public String getEnrolldate() {
		return enrolldate;
	}

	public void setEnrolldate(String enrolldate) {
		this.enrolldate = enrolldate;
	}

	public int getIsdelete() {
		return isdelete;
	}

	public void setIsdelete(int isdelete) {
		this.isdelete = isdelete;
	}

	public int getDelreason() {
		return delreason;
	}

	public void setDelreason(int delreason) {
		this.delreason = delreason;
	}

	public String getDeldate() {
		return deldate;
	}

	public void setDeldate(String deldate) {
		this.deldate = deldate;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	
	}
	
