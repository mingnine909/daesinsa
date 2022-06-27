package kh.spring.daesinsa.shopping.domain;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Shopping {
	
//	P_ID         NOT NULL VARCHAR2(20)   
//	P_NAME       NOT NULL VARCHAR2(200)  
//	P_PRICE      NOT NULL NUMBER         
//	P_CONTENT             VARCHAR2(3000) 
//	P_POSTDATE   NOT NULL TIMESTAMP(6)   
//	P_ISSALE              NUMBER         
//	P_SALEAMOUNT          NUMBER         
//	P_ISRENTAL   NOT NULL NUMBER         
//	P_ISSOLDOUT  NOT NULL NUMBER         
//	C_ID         NOT NULL VARCHAR2(30)  

	private String p_id;
	private String p_name;
	private int p_price;
	private String p_content;
	private String p_postdate;
	private int p_issale;
	private int p_saleamount;
	private int p_isrental;
	private int p_issoldout;
	private String c_id;
	//카테고리 목록
	private Category category;
	//이미지 파일 번호 및 경로 추가 
	private List<ProductImg> p_img_list;
	//상품 상세조회 시 상세옵션
	private List<ProductOptionInfo> p_option_info;
	

	@Override
	public String toString() {
		return "Shopping [p_id=" + p_id + ", p_name=" + p_name + ", p_price=" + p_price + ", p_content=" + p_content
				+ ", p_postdate=" + p_postdate + ", p_issale=" + p_issale + ", p_saleamount=" + p_saleamount
				+ ", p_isrental=" + p_isrental + ", p_issoldout=" + p_issoldout + ", c_id=" + c_id + ", category="
				+ category + ", p_img_list=" + p_img_list + ", p_option_info=" + p_option_info + "]";
	}


	public String getP_id() {
		return p_id;
	}


	public void setP_id(String p_id) {
		this.p_id = p_id;
	}



	public String getP_name() {
		return p_name;
	}



	public void setP_name(String p_name) {
		this.p_name = p_name;
	}



	public int getP_price() {
		return p_price;
	}



	public void setP_price(int p_price) {
		this.p_price = p_price;
	}



	public String getP_content() {
		return p_content;
	}



	public void setP_content(String p_content) {
		this.p_content = p_content;
	}



	public String getP_postdate() {
		return p_postdate;
	}



	public void setP_postdate(String p_postdate) {
		this.p_postdate = p_postdate;
	}



	public int getP_issale() {
		return p_issale;
	}



	public void setP_issale(int p_issale) {
		this.p_issale = p_issale;
	}



	public int getP_saleamount() {
		return p_saleamount;
	}



	public void setP_saleamount(int p_saleamount) {
		this.p_saleamount = p_saleamount;
	}



	public int getP_isrental() {
		return p_isrental;
	}



	public void setP_isrental(int p_isrental) {
		this.p_isrental = p_isrental;
	}



	public int getP_issoldout() {
		return p_issoldout;
	}



	public void setP_issoldout(int p_issoldout) {
		this.p_issoldout = p_issoldout;
	}



	public String getC_id() {
		return c_id;
	}



	public void setC_id(String c_id) {
		this.c_id = c_id;
	}




	public Category getCategory() {
		return category;
	}


	public void setCategory(Category category) {
		this.category = category;
	}


	public List<ProductImg> getP_img_list() {
		return p_img_list;
	}


	public void setP_img_list(List<ProductImg> p_img_list) {
		this.p_img_list = p_img_list;
	}


	public List<ProductOptionInfo> getP_option_info() {
		return p_option_info;
	}


	public void setP_option_info(List<ProductOptionInfo> p_option_info) {
		this.p_option_info = p_option_info;
	}


	
}
