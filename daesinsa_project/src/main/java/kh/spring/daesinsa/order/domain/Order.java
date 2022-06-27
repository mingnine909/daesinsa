package kh.spring.daesinsa.order.domain;

import java.sql.Date;

public class Order {
	private String o_num;
	private Date o_date;
	private String o_orderman;
	private int o_phone;
	private String o_destination;
	private int o_memo;
	private String m_id;
	private int sb_amount;
	private int o_price;
	private int o_iscoupon;
	private int o_means;
	private int sb_totalprice;
	private int c_num;
	@Override
	public String toString() {
		return "Order [o_num=" + o_num + ", o_date=" + o_date + ", o_orderman=" + o_orderman + ", o_phone=" + o_phone
				+ ", o_destination=" + o_destination + ", o_memo=" + o_memo + ", m_id=" + m_id + ", sb_amount="
				+ sb_amount + ", o_price=" + o_price + ", o_iscoupon=" + o_iscoupon + ", o_means=" + o_means
				+ ", sb_totalprice=" + sb_totalprice + ", c_num=" + c_num + "]";
	}
	public String getO_num() {
		return o_num;
	}
	public void setO_num(String o_num) {
		this.o_num = o_num;
	}
	public Date getO_date() {
		return o_date;
	}
	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}
	public String getO_orderman() {
		return o_orderman;
	}
	public void setO_orderman(String o_orderman) {
		this.o_orderman = o_orderman;
	}
	public int getO_phone() {
		return o_phone;
	}
	public void setO_phone(int o_phone) {
		this.o_phone = o_phone;
	}
	public String getO_destination() {
		return o_destination;
	}
	public void setO_destination(String o_destination) {
		this.o_destination = o_destination;
	}
	public int getO_memo() {
		return o_memo;
	}
	public void setO_memo(int o_memo) {
		this.o_memo = o_memo;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getSb_amount() {
		return sb_amount;
	}
	public void setSb_amount(int sb_amount) {
		this.sb_amount = sb_amount;
	}
	public int getO_price() {
		return o_price;
	}
	public void setO_price(int o_price) {
		this.o_price = o_price;
	}
	public int getO_iscoupon() {
		return o_iscoupon;
	}
	public void setO_iscoupon(int o_iscoupon) {
		this.o_iscoupon = o_iscoupon;
	}
	public int getO_means() {
		return o_means;
	}
	public void setO_means(int o_means) {
		this.o_means = o_means;
	}
	public int getSb_totalprice() {
		return sb_totalprice;
	}
	public void setSb_totalprice(int sb_totalprice) {
		this.sb_totalprice = sb_totalprice;
	}
	public int getC_num() {
		return c_num;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	
	
	
	
	
	
	
}
