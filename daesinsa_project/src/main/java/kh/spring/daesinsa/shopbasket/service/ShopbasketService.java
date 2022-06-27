package kh.spring.daesinsa.shopbasket.service;

import java.util.List;

import kh.spring.daesinsa.shopbasket.domain.Shopbasket;

public interface ShopbasketService {
	
	
	//장바구니 목록
	
	public List<Shopbasket> getShopBasketList(String c_id);
	
	

}
