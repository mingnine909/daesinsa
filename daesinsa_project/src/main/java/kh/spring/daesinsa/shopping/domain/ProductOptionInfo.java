package kh.spring.daesinsa.shopping.domain;

import org.springframework.stereotype.Component;

@Component
public class ProductOptionInfo {

	
	private String poi_id;
	private String p_id;
	private String po_id;
	private int poi_type;
	private int poi_amout;
	
	
	@Override
	public String toString() {
		return "ProductOptionInfo [poi_id=" + poi_id + ", p_id=" + p_id + ", po_id=" + po_id + ", poi_type=" + poi_type
				+ ", poi_amout=" + poi_amout + "]";
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
	public int getPoi_type() {
		return poi_type;
	}
	public void setPoi_type(int poi_type) {
		this.poi_type = poi_type;
	}
	public int getPoi_amout() {
		return poi_amout;
	}
	public void setPoi_amout(int poi_amout) {
		this.poi_amout = poi_amout;
	}
	
	

}
