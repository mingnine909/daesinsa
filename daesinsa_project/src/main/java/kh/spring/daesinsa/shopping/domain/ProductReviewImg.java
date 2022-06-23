package kh.spring.daesinsa.shopping.domain;

import org.springframework.stereotype.Component;

@Component
public class ProductReviewImg {

	
//	PR_IMG_NO   NOT NULL NUMBER       
//	PR_NO       NOT NULL NUMBER       
//	PR_IMG_PATH NOT NULL VARCHAR2(20) 
	
	private int pr_img_no;
	private int pr_no;
	private String pr_img_path;
	
	
	@Override
	public String toString() {
		return "ProductReviewImg [pr_img_no=" + pr_img_no + ", pr_no=" + pr_no + ", pr_img_path=" + pr_img_path + "]";
	}
	
	
	public int getPr_img_no() {
		return pr_img_no;
	}
	public void setPr_img_no(int pr_img_no) {
		this.pr_img_no = pr_img_no;
	}
	public int getPr_no() {
		return pr_no;
	}
	public void setPr_no(int pr_no) {
		this.pr_no = pr_no;
	}
	public String getPr_img_path() {
		return pr_img_path;
	}
	public void setPr_img_path(String pr_img_path) {
		this.pr_img_path = pr_img_path;
	}
	
}
