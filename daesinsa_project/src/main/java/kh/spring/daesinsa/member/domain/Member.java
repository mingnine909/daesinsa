package kh.spring.daesinsa.member.domain;

import org.springframework.stereotype.Component;

@Component
public class Member {
	
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
	
	private String m_id; 
	private String m_pwd;
	private String m_name;
	private String m_email;
	private String m_phone;
	private String m_adrs;
	private int m_gender;
	private String m_bdate;
	private String m_enrolldate;
	private int m_isdelete;
	
	@Override
	public String toString() {
		return "Member [m_id=" + m_id + ", m_pwd=" + m_pwd + ", m_name=" + m_name + ", m_email=" + m_email
				+ ", m_phone=" + m_phone + ", m_adrs=" + m_adrs + ", m_gender=" + m_gender + ", m_bdate=" + m_bdate
				+ ", m_enrolldate=" + m_enrolldate + ", m_isdelete=" + m_isdelete + "]";
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pwd() {
		return m_pwd;
	}
	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
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
	
	
	
	
	
	
	
	
	
}
