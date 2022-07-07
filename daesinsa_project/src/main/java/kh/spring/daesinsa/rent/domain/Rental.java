package kh.spring.daesinsa.rent.domain;

import org.springframework.stereotype.Component;

@Component
public class Rental {
	
//	M_ID        NOT NULL VARCHAR2(20) 
//	P_ID        NOT NULL VARCHAR2(20) 
//	R_STARTDATE NOT NULL TIMESTAMP(6) 
//	R_ENDDATE   NOT NULL DATE         
//	R_STATUS    NOT NULL NUMBER       
//	R_PRICE     NOT NULL NUMBER       
//	R_NUM       NOT NULL VARCHAR2(20) 
	
	private String m_id;
	private String p_id;
	private String r_startdate;
	private String r_enddate;
	private int r_status;
	private int r_price;
	private int r_num;
	
	
	@Override
	public String toString() {
		return "Rental [m_id=" + m_id + ", p_id=" + p_id + ", r_startdate=" + r_startdate + ", r_enddate=" + r_enddate
				+ ", r_status=" + r_status + ", r_price=" + r_price + ", r_num=" + r_num + "]";
	}


	public String getM_id() {
		return m_id;
	}


	public void setM_id(String m_id) {
		this.m_id = m_id;
	}


	public String getP_id() {
		return p_id;
	}


	public void setP_id(String p_id) {
		this.p_id = p_id;
	}


	public String getR_startdate() {
		return r_startdate;
	}


	public void setR_startdate(String r_startdate) {
		this.r_startdate = r_startdate;
	}


	public String getR_enddate() {
		return r_enddate;
	}


	public void setR_enddate(String r_enddate) {
		this.r_enddate = r_enddate;
	}


	public int getR_status() {
		return r_status;
	}


	public void setR_status(int r_status) {
		this.r_status = r_status;
	}


	public int getR_price() {
		return r_price;
	}


	public void setR_price(int r_price) {
		this.r_price = r_price;
	}


	public int getR_num() {
		return r_num;
	}


	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	
	
	
	

}
