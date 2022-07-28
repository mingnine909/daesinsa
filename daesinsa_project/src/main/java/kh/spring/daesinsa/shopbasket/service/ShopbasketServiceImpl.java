package kh.spring.daesinsa.shopbasket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.daesinsa.shopbasket.dao.ShopbasketDao;
import kh.spring.daesinsa.shopbasket.domain.Shopbasket;


@Service
public class ShopbasketServiceImpl implements ShopbasketService {

	@Autowired
	private ShopbasketDao dao;

	
	//장바구니 목록
	@Override
	public List<Shopbasket> getShopbasketList(String m_id) {		
		return dao.getShopbasket(m_id);
	}

	//장바구니 수정
	@Override
	public int modifyCount(int sb_amount, String p_id, String poi_id) {
	//public int modifyCount(int sb_amount, String p_id, String_poi_id) {//
		return dao.modifyCount(sb_amount, p_id, poi_id);
	}
	
	//장바구니 삭제
	@Override
	public int deleteShopbasket(Shopbasket shopbasket) {
		return dao.deleteShopbasket(shopbasket);
	}

	
}
