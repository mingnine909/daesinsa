package kh.spring.daesinsa.member.domain;

import java.io.Serializable;
import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@SuppressWarnings("serial")
@Getter
@Setter
@ToString
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
	
	private String id; 
	private String password;
	private String m_name;
	private String m_email;
	private String m_phone;
	private String m_adrs;
	private int m_gender;
	private String m_bdate;
	private String m_enrolldate;
	private int m_isdelete;
	private int m_delreason;
	private String m_deldate;
	private String auth;
	private String enabled;
	
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
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_adrs() {
		return m_adrs;
	}
	public void setM_adrs(String m_adrs) {
		this.m_adrs = m_adrs;
	}
	public int getM_gender() {
		return m_gender;
	}
	public void setM_gender(int m_gender) {
		this.m_gender = m_gender;
	}
	public String getM_bdate() {
		return m_bdate;
	}
	public void setM_bdate(String m_bdate) {
		this.m_bdate = m_bdate;
	}
	public String getM_enrolldate() {
		return m_enrolldate;
	}
	public void setM_enrolldate(String m_enrolldate) {
		this.m_enrolldate = m_enrolldate;
	}
	public int getM_isdelete() {
		return m_isdelete;
	}
	public void setM_isdelete(int m_isdelete) {
		this.m_isdelete = m_isdelete;
	}
	public int getM_delreason() {
		return m_delreason;
	}
	public void setM_delreason(int m_delreason) {
		this.m_delreason = m_delreason;
	}
	public String getM_deldate() {
		return m_deldate;
	}
	public void setM_deldate(String m_deldate) {
		this.m_deldate = m_deldate;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	
	}
	
