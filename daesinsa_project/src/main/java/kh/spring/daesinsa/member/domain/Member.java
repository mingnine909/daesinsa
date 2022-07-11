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
	private String name;
	private String email;
	private String phone;
	private String adrs;
	private int gender;
	private String bdate;
	private String enrolldate;
	private int isdelete;
	private int delreason;
	private String deldate;
	private String auth;
	private int enabled;
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
	
	}
	
