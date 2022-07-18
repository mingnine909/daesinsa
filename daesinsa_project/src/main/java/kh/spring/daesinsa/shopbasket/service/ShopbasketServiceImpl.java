package kh.spring.daesinsa.shopbasket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.daesinsa.shopbasket.domain.Shopbasket;


@Service
public class ShopbasketServiceImpl implements ShopbasketService {

	@Autowired
	private Shopbasket dao;

	@Override
	public List<Shopbasket> getShopBasketList(String m_id) {
		
		/*
		 * List<Shopbasket> shopbasket = shopbasket.getShopbasket(m_id);
		 * 
		 * for(Shopbasket) {
		 * 
		 * }
		 */
		
		return null;
	}


	

	
	
	
}
