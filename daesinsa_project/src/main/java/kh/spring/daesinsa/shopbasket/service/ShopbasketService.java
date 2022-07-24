package kh.spring.daesinsa.shopbasket.service;

import java.util.List;

import kh.spring.daesinsa.shopbasket.dao.ShopbasketDao;
import kh.spring.daesinsa.shopbasket.domain.Shopbasket;

public interface ShopbasketService {
	
	
	//장바구니 목록
	public List<Shopbasket> getShopbasketList(String m_id);
	
	
	//장바구니 수정
	
	public int modifyCount(int sb_amount);
	
	//장바구니 삭제
	
	public int deleteShopbasket(int p_id);

}
