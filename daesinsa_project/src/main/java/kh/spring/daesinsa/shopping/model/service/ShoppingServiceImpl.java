package kh.spring.daesinsa.shopping.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.daesinsa.shopping.domain.ProductQna;
import kh.spring.daesinsa.shopping.domain.ProductReview;
import kh.spring.daesinsa.shopping.domain.Shopping;
import kh.spring.daesinsa.shopping.model.dao.ShoppingDao;

@Service
public class ShoppingServiceImpl implements ShoppingService{

	@Autowired
	private ShoppingDao dao;
	
	
	//0. 쇼핑 상품 카테고리별 전체 갯수(페이징처리용)
	@Override
	public int selectCaTotal(String c_id) {
		return dao.selectCaTotal(c_id);
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
	
	//1-2.낮은 가격순
	@Override
	public List<Shopping> selectListCaMin(Shopping shopping, int currentPage, int pageSize) {
		return dao.selectListCaMin(shopping, currentPage, pageSize);
	}

	//1-3.높은 가격순
	@Override
	public List<Shopping> selectListCaMax(Shopping shopping, int currentPage, int pageSize) {
		return dao.selectListCaMax(shopping, currentPage, pageSize);
	}
	
	//2. 쇼핑 상품 상세 조회
	@Override
	public Shopping detailProduct(Shopping shopping) {
		return dao.detailProduct(shopping);
	}
	
	
	//3-1.쇼핑 상품 검색 시 전체 개수(검색용)
	@Override
	public int selectSearchTotal(String keyword) {
		return dao.selectSearchTotal(keyword);
	}
	
	//3-2. 상품 검색
	@Override
	public List<Shopping> searchProduct(String keyword, int currentPage, int pageSize) {
		return dao.searchProduct(keyword, currentPage, pageSize);
	}

	//4. 상품 qna
	@Override
	public List<ProductQna> selectQnaList(String p_id) {
		return dao.selectQnaList(p_id);
	}

	//5. 상품 리뷰
	@Override
	public List<ProductReview> selectReviewList(String p_id) {
		return dao.selectReviewList(p_id);
	}




	}

