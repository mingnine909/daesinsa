package kh.spring.daesinsa.shopping.domain;

import org.springframework.stereotype.Component;

@Component
public class WishList {
	
	private String p_id;
	private String m_id;
	
	@Override
	public String toString() {
		return "WishList [p_id=" + p_id + ", m_id=" + m_id + "]";
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
	
	
	

}
