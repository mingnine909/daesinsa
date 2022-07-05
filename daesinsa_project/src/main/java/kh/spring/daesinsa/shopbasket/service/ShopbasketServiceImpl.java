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
	public List<Shopbasket> getShopBasketList(String c_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductReview> selectReviewList(String p_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectReviewTotal(String p_id) {
		// TODO Auto-generated method stub
		return 0;
	}
	

	
	
	
}
