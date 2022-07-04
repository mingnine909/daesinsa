package kh.spring.daesinsa.cs.domain;

import org.springframework.stereotype.Component;

@Component
public class CsNotice {
	
//	CS_NNO      NOT NULL NUMBER         
//	CS_NTITLE   NOT NULL VARCHAR2(200)  
//	CS_NCONTENT NOT NULL VARCHAR2(3000) 
//	CS_NDATE    NOT NULL TIMESTAMP(6) 
	
	private int cs_nno;
	private String cs_ntitle;
	private String cs_ncontent;
	private String cs_ndate;
	
	
	@Override
	public String toString() {
		return "CsNotice [cs_nno=" + cs_nno + ", cs_ntitle=" + cs_ntitle + ", cs_ncontent=" + cs_ncontent
				+ ", cs_ndate=" + cs_ndate + "]";
	}


	public int getCs_nno() {
		return cs_nno;
	}


	public void setCs_nno(int cs_nno) {
		this.cs_nno = cs_nno;
	}


	public String getCs_ntitle() {
		return cs_ntitle;
	}


	public void setCs_ntitle(String cs_ntitle) {
		this.cs_ntitle = cs_ntitle;
	}


	public String getCs_ncontent() {
		return cs_ncontent;
	}


	public void setCs_ncontent(String cs_ncontent) {
		this.cs_ncontent = cs_ncontent;
	}


	public String getCs_ndate() {
		return cs_ndate;
	}


	public void setCs_ndate(String cs_ndate) {
		this.cs_ndate = cs_ndate;
	}
	
	
	
	

}
