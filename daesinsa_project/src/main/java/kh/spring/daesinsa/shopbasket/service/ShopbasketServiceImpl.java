package kh.spring.daesinsa.shopbasket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.daesinsa.shopbasket.domain.Shopbasket;
import kh.spring.daesinsa.shopping.domain.ProductQna;
import kh.spring.daesinsa.shopping.domain.ProductReview;
import kh.spring.daesinsa.shopping.domain.Shopping;
import kh.spring.daesinsa.shopping.model.service.ShoppingService;

@Service
public class ShopbasketServiceImpl implements ShoppingService {

	@Autowired
	private Shopbasket dao;

	@Override
	public int selectCaTotal(String c_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Shopping> selectListAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Shopping> selectListCa(Shopping shopping, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Shopping> selectListCaMin(Shopping shopping, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Shopping> selectListCaMax(Shopping shopping, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Shopping detailProduct(Shopping shopping) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectSearchTotal(String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Shopping> searchProduct(String keyword, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductQna> selectQnaList(String p_id) {
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
