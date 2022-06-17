package kh.spring.daesinsa.shopping.domain;

import org.springframework.stereotype.Component;

@Component
public class Category {
	
//	C_ID     NOT NULL VARCHAR2(30) 
//	C_FIRST  NOT NULL NUMBER       
//	C_SECOND NOT NULL NUMBER       
//	C_THRID  NOT NULL NUMBER  
	
	private String c_id;
	private int c_first;
	private int c_second;
	private int c_thrid;
	@Override
	public String toString() {
		return "Category [c_id=" + c_id + ", c_first=" + c_first + ", c_second=" + c_second + ", c_thrid=" + c_thrid
				+ "]";
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public int getC_first() {
		return c_first;
	}
	public void setC_first(int c_first) {
		this.c_first = c_first;
	}
	public int getC_second() {
		return c_second;
	}
	public void setC_second(int c_second) {
		this.c_second = c_second;
	}
	public int getC_thrid() {
		return c_thrid;
	}
	public void setC_thrid(int c_thrid) {
		this.c_thrid = c_thrid;
	}
	
	

}
