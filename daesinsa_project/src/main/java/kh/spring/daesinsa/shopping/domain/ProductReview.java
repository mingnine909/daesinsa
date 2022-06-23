package kh.spring.daesinsa.shopping.domain;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ProductReview {
	
//	PR_NO      NOT NULL NUMBER         
//	PR_TITLE   NOT NULL VARCHAR2(100)  
//	PR_CONTENT NOT NULL VARCHAR2(1000) 
//	PR_DATE    NOT NULL TIMESTAMP(6)   
//	M_ID       NOT NULL VARCHAR2(20)   
//	P_ID       NOT NULL VARCHAR2(20) 
	
	private int pr_no;
	private String pr_title;
	private String pr_content;
	private String pr_date;
	private String m_id;
	private String p_id;
	
	//상품 이미지 List형태로 추가
	private List<ProductReviewImg> pr_review_img;

	@Override
	public String toString() {
		return "ProductReview [pr_no=" + pr_no + ", pr_title=" + pr_title + ", pr_content=" + pr_content + ", pr_date="
				+ pr_date + ", m_id=" + m_id + ", p_id=" + p_id + ", pr_review_img=" + pr_review_img + "]";
	}

	public int getPr_no() {
		return pr_no;
	}

	public void setPr_no(int pr_no) {
		this.pr_no = pr_no;
	}

	public String getPr_title() {
		return pr_title;
	}

	public void setPr_title(String pr_title) {
		this.pr_title = pr_title;
	}

	public String getPr_content() {
		return pr_content;
	}

	public void setPr_content(String pr_content) {
		this.pr_content = pr_content;
	}

	public String getPr_date() {
		return pr_date;
	}

	public void setPr_date(String pr_date) {
		this.pr_date = pr_date;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public List<ProductReviewImg> getPr_review_img() {
		return pr_review_img;
	}

	public void setPr_review_img(List<ProductReviewImg> pr_review_img) {
		this.pr_review_img = pr_review_img;
	}
	
	
	
	
	

}
