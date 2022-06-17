package kh.spring.daesinsa.shopping.domain;

import org.springframework.stereotype.Component;

@Component
public class Product_img {
	
	private int p_img_no;
	private String p_id;
	private String p_img_path;
	
	@Override
	public String toString() {
		return "Product_img [p_img_no=" + p_img_no + ", p_id=" + p_id + ", p_img_path=" + p_img_path + "]";
	}

	public int getP_img_no() {
		return p_img_no;
	}

	public void setP_img_no(int p_img_no) {
		this.p_img_no = p_img_no;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getP_img_path() {
		return p_img_path;
	}

	public void setP_img_path(String p_img_path) {
		this.p_img_path = p_img_path;
	}
	
	
	

}
