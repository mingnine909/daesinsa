package kh.spring.daesinsa.shopping.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.daesinsa.shopping.domain.Shopping;
import kh.spring.daesinsa.shopping.model.dao.ShoppingDao;

@Service
public class ShoppingServiceImpl implements ShoppingService{

	@Autowired
	private ShoppingDao dao;
	//0. 쇼핑 상품 전체 갯수(페이징처리용)
	@Override
	public int selectTotal(String c_id) {
		return dao.selectTotal(c_id);
	}
	//1. 쇼핑상품 전체 목록 조회
	@Override
	public List<Shopping> selectListAll() {
		return dao.selectListAll();
	}
	
	//1-1.쇼핑 상품 카테고리별 조회
	@Override
	public List<Shopping> selectListCa(Shopping shopping, int currentPage, int pageSize) {
		return dao.selectListCa(shopping,currentPage,pageSize);
	}

}
