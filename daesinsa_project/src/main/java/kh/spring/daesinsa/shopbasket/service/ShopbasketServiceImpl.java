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

	
	//Shopbasket 목록 조회
	@Override
	public List<Shopbasket> getShopBasketList(String m_id) {		
		return dao.getShopbasket(m_id);
	}

	//Shopbasket 수정
	
	@Override
	public int modifyCount(int sb_amount) {
		return dao.modifyCount(sb_amount);
		
	}
	

	//Shopbasket 삭제
	
	@Override
	public int deleteShopbasket(int p_id) {
		return dao.deleteShopbasket(p_id);
		
	}


	

	
	
	
}
