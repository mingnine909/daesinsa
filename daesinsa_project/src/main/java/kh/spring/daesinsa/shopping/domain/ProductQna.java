package kh.spring.daesinsa.shopping.domain;

import org.springframework.stereotype.Component;

@Component
public class ProductQna {
	
//	PQ_NO      NOT NULL NUMBER         
//	PQ_TITLE   NOT NULL VARCHAR2(200)  
//	PQ_TYPE    NOT NULL NUMBER         
//	PQ_CONTENT NOT NULL VARCHAR2(3000) 
//	PQ_DATE    NOT NULL TIMESTAMP(6)   
//	PQ_CLOSED           NUMBER         
//	P_ID       NOT NULL VARCHAR2(20)   
//	M_ID       NOT NULL VARCHAR2(20)   
//	AD_ID      NOT NULL VARCHAR2(20)   
	
	private int pq_no;
	private String pq_title;
	private int pq_type;
	private String pq_content;
	private String pq_date;
	private int pq_closed;
	private String p_id;
	private String m_id;
	private String ad_id;
	@Override
	
	public String toString() {
		return "ProductQna [pq_no=" + pq_no + ", pq_title=" + pq_title + ", pq_type=" + pq_type + ", pq_content="
				+ pq_content + ", pq_date=" + pq_date + ", pq_closed=" + pq_closed + ", p_id=" + p_id + ", m_id=" + m_id
				+ ", ad_id=" + ad_id + "]";
	}
	public int getPq_no() {
		return pq_no;
	}
	public void setPq_no(int pq_no) {
		this.pq_no = pq_no;
	}
	public String getPq_title() {
		return pq_title;
	}
	public void setPq_title(String pq_title) {
		this.pq_title = pq_title;
	}
	public int getPq_type() {
		return pq_type;
	}
	public void setPq_type(int pq_type) {
		this.pq_type = pq_type;
	}
	public String getPq_content() {
		return pq_content;
	}
	public void setPq_content(String pq_content) {
		this.pq_content = pq_content;
	}
	public String getPq_date() {
		return pq_date;
	}
	public void setPq_date(String pq_date) {
		this.pq_date = pq_date;
	}
	public int getPq_closed() {
		return pq_closed;
	}
	public void setPq_closed(int pq_closed) {
		this.pq_closed = pq_closed;
	}
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getAd_id() {
		return ad_id;
	}
	public void setAd_id(String ad_id) {
		this.ad_id = ad_id;
	}
	
	

}
