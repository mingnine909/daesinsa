package kh.spring.daesinsa.shopbasket.domain;


import org.springframework.stereotype.Component;
    


@Component
public class Shopbasket {
	
	private String m_id;
	private String poi_id;
	private String p_id;
	private String po_id;
	private int sb_amount;
	private int p_price;
	private int sb_totalprice;
	
	
	@Override
	public String toString() {
		return "Shopbasket [m_id=" + m_id + ", poi_id=" + poi_id + ", p_id=" + p_id + ", po_id=" + po_id
				+ ", sb_amount=" + sb_amount + ", p_price=" + p_price + ", sb_totalprice=" + sb_totalprice + "]";
	}


	public String getM_id() {
		return m_id;
	}


	public void setM_id(String m_id) {
		this.m_id = m_id;
	}


	public String getPoi_id() {
		return poi_id;
	}


	public void setPoi_id(String poi_id) {
		this.poi_id = poi_id;
	}


	public String getP_id() {
		return p_id;
	}


	public void setP_id(String p_id) {
		this.p_id = p_id;
	}


	public String getPo_id() {
		return po_id;
	}


	public void setPo_id(String po_id) {
		this.po_id = po_id;
	}


	public int getSb_amount() {
		return sb_amount;
	}


	public void setSb_amount(int sb_amount) {
		this.sb_amount = sb_amount;
	}


	public int getP_price() {
		return p_price;
	}


	public void setP_price(int p_price) {
		this.p_price = p_price;
	}


	public int getSb_totalprice() {
		return sb_totalprice;
	}


	public void setSb_totalprice(int sb_totalprice) {
		this.sb_totalprice = sb_totalprice;
	}
	
	
	
	
	

}
