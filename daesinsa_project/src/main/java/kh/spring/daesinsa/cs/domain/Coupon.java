package kh.spring.daesinsa.cs.domain;

import org.springframework.stereotype.Component;

@Component
public class Coupon {
		
//	C_NUM       NOT NULL NUMBER       
//	C_PRICE     NOT NULL NUMBER       
//	C_STARTDATE NOT NULL DATE         
//	C_ENDDATE            DATE         
//	C_STATUS    NOT NULL NUMBER       
//	M_ID        NOT NULL VARCHAR2(20) 
//	C_NAME      NOT NULL VARCHAR2(20) 
	
	private int c_num;
	private int c_price;
	private String c_startdate;
	private String c_enddate;
	private int cv_status;
	private String m_id;
	private String c_name;
	
	
	@Override
	public String toString() {
		return "Coupon [c_num=" + c_num + ", c_price=" + c_price + ", c_startdate=" + c_startdate + ", c_enddate="
				+ c_enddate + ", cv_status=" + cv_status + ", m_id=" + m_id + ", c_name=" + c_name + "]";
	}


	public int getC_num() {
		return c_num;
	}


	public void setC_num(int c_num) {
		this.c_num = c_num;
	}


	public int getC_price() {
		return c_price;
	}


	public void setC_price(int c_price) {
		this.c_price = c_price;
	}


	public String getC_startdate() {
		return c_startdate;
	}


	public void setC_startdate(String c_startdate) {
		this.c_startdate = c_startdate;
	}


	public String getC_enddate() {
		return c_enddate;
	}


	public void setC_enddate(String c_enddate) {
		this.c_enddate = c_enddate;
	}


	public int getCv_status() {
		return cv_status;
	}


	public void setCv_status(int cv_status) {
		this.cv_status = cv_status;
	}


	public String getM_id() {
		return m_id;
	}


	public void setM_id(String m_id) {
		this.m_id = m_id;
	}


	public String getC_name() {
		return c_name;
	}


	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	
	
	
	

}
