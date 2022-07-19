package kh.spring.daesinsa.cs.domain;

import org.springframework.stereotype.Component;

@Component
public class CsQna {
	
//	M_ID        NOT NULL VARCHAR2(20)   
//	CS_QNO      NOT NULL NUMBER         
//	CS_QTITLE   NOT NULL VARCHAR2(200)  
//	CS_QCONTENT NOT NULL VARCHAR2(3000) 
//	CS_QDATE    NOT NULL TIMESTAMP(6)   
//	CS_QFILE             VARCHAR2(100)  
//	CS_QLEVEL            NUMBER         
//	CS_QREF              NUMBER         
//	CS_TYPE     NOT NULL NUMBER         
//	AD_ID       NOT NULL VARCHAR2(20) 
	
	private String m_id;
	private int cs_qno;
	private String cs_qtitle;
	private String cs_qcontent;
	private String cs_qdate;
	private String cs_qfile;
	private int cs_qlevel;
	private int cs_qref;
	private int cs_type;
	private String ad_id;
	
	
	@Override
	public String toString() {
		return "CsQna [m_id=" + m_id + ", cs_qno=" + cs_qno + ", cs_qtitle=" + cs_qtitle + ", cs_qcontent="
				+ cs_qcontent + ", cs_qdate=" + cs_qdate + ", cs_qfile=" + cs_qfile + ", cs_qlevel=" + cs_qlevel
				+ ", cs_qref=" + cs_qref + ", cs_type=" + cs_type + ", ad_id=" + ad_id + "]";
	}


	public String getM_id() {
		return m_id;
	}


	public void setM_id(String m_id) {
		this.m_id = m_id;
	}


	public int getCs_qno() {
		return cs_qno;
	}


	public void setCs_qno(int cs_qno) {
		this.cs_qno = cs_qno;
	}


	public String getCs_qtitle() {
		return cs_qtitle;
	}


	public void setCs_qtitle(String cs_qtitle) {
		this.cs_qtitle = cs_qtitle;
	}


	public String getCs_qcontent() {
		return cs_qcontent;
	}


	public void setCs_qcontent(String cs_qcontent) {
		this.cs_qcontent = cs_qcontent;
	}


	public String getCs_qdate() {
		return cs_qdate;
	}


	public void setCs_qdate(String cs_qdate) {
		this.cs_qdate = cs_qdate;
	}


	public String getCs_qfile() {
		return cs_qfile;
	}


	public void setCs_qfile(String cs_qfile) {
		this.cs_qfile = cs_qfile;
	}


	public int getCs_qlevel() {
		return cs_qlevel;
	}


	public void setCs_qlevel(int cs_qlevel) {
		this.cs_qlevel = cs_qlevel;
	}


	public int getCs_qref() {
		return cs_qref;
	}


	public void setCs_qref(int cs_qref) {
		this.cs_qref = cs_qref;
	}


	public int getCs_type() {
		return cs_type;
	}


	public void setCs_type(int cs_type) {
		this.cs_type = cs_type;
	}


	public String getAd_id() {
		return ad_id;
	}


	public void setAd_id(String ad_id) {
		this.ad_id = ad_id;
	}
	
	
	

}
