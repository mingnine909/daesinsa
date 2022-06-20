package kh.spring.daesinsa.shopping.model.service;

import java.util.List;

import kh.spring.daesinsa.shopping.domain.ProductQna;
import kh.spring.daesinsa.shopping.domain.Shopping;

public interface ShoppingService {
	
	

		
	//0. 쇼핑 상품 전체 갯수(페이징처리용)
	public int selectCaTotal(String c_id);
	
	//1. 쇼핑상품 전체 목록 조회
	public List<Shopping> selectListAll();

	//1-1.쇼핑 상품 카테고리별 조회
	public List<Shopping> selectListCa(Shopping shopping,int currentPage, int pageSize);
	//1-2.낮은 가격순
	public List<Shopping> selectListCaMin(Shopping shopping,int currentPage, int pageSize);
	//1-3.높은 가격순
	public List<Shopping> selectListCaMax(Shopping shopping,int currentPage, int pageSize);

	//2.쇼핑 상품 상세 조회
	public Shopping detailProduct(Shopping shopping);
	
	//3-1.쇼핑 상품 검색 시 전체 개수(검색용)
	public int selectSearchTotal(String keyword);
	
	//3-2. 상품 검색
	public List<Shopping> searchProduct(String keyword,int currentPage, int pageSize);
	
	//4.상품 qna 
	public List<ProductQna> selectQnaList(String p_id);
}
