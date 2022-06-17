package kh.spring.daesinsa.shopping.model.service;

import java.util.List;

import kh.spring.daesinsa.shopping.domain.Shopping;

public interface ShoppingService {
	
	//0. 쇼핑 상품 전체 갯수(페이징처리용)
	public int selectTotal(String c_id);
	
	//1. 쇼핑상품 전체 목록 조회
	public List<Shopping> selectListAll();

	//1-1.쇼핑 상품 카테고리별 조회
	public List<Shopping> selectListCa(Shopping shopping,int currentPage, int pageSize);
}
