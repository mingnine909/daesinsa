package kh.spring.daesinsa.shopbasket.domain;


import org.springframework.stereotype.Component;

@Component
public class Shopbasket {
	private String poi_id;
	private String member_id;
	private int sb_amount;
	private int sb_coupon;
	private int p_price;
	private int sb_totalprice;
	
	
	@Override
	public String toString() {
		return "Shopbasket [poi_id=" + poi_id + ", member_id=" + member_id + ", sb_amount=" + sb_amount + ", sb_coupon="
				+ sb_coupon + ", p_price=" + p_price + ", sb_totalprice=" + sb_totalprice + "]";
	}


	public String getPoi_id() {
		return poi_id;
	}


	public void setPoi_id(String poi_id) {
		this.poi_id = poi_id;
	}


	public String getMember_id() {
		return member_id;
	}


	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}


	public int getSb_amount() {
		return sb_amount;
	}


	public void setSb_amount(int sb_amount) {
		this.sb_amount = sb_amount;
	}


	public int getSb_coupon() {
		return sb_coupon;
	}


	public void setSb_coupon(int sb_coupon) {
		this.sb_coupon = sb_coupon;
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
