package kh.spring.daesinsa.cs.domain;

import org.springframework.stereotype.Component;

@Component
public class CsFaq {
	
//	CS_FNO       NOT NULL NUMBER         
//	CS_QCONTENT  NOT NULL VARCHAR2(1000) 
//	CS_ACONTENT  NOT NULL VARCHAR2(1000) 
//	CS_FCATEGORY NOT NULL NUMBER

	
	private int cs_fno;
	private String cs_qcontent;
	private String cs_acontent;
	private int cs_fcategory;
	
	
	@Override
	public String toString() {
		return "CsFaq [cs_fno=" + cs_fno + ", cs_qcontent=" + cs_qcontent + ", cs_acontent=" + cs_acontent
				+ ", cs_fcategory=" + cs_fcategory + "]";
	}


	public int getCs_fno() {
		return cs_fno;
	}


	public void setCs_fno(int cs_fno) {
		this.cs_fno = cs_fno;
	}


	public String getCs_qcontent() {
		return cs_qcontent;
	}


	public void setCs_qcontent(String cs_qcontent) {
		this.cs_qcontent = cs_qcontent;
	}


	public String getCs_acontent() {
		return cs_acontent;
	}


	public void setCs_acontent(String cs_acontent) {
		this.cs_acontent = cs_acontent;
	}


	public int getCs_fcategory() {
		return cs_fcategory;
	}


	public void setCs_fcategory(int cs_fcategory) {
		this.cs_fcategory = cs_fcategory;
	}
	
	
	
	
	
}
