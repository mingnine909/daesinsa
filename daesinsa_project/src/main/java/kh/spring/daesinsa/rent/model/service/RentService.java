package kh.spring.daesinsa.rent.model.service;

import java.util.List;

import kh.spring.daesinsa.shopping.domain.Shopping;

public interface RentService {

	
	
	
	// 대여 상품 전체 갯수(페이징처리용)
	public int selectCaRentTotal(String c_id);
	
	//1-1.대여 상품 카테고리별 조회
	public List<Shopping> selectRentListCa(Shopping shopping,int currentPage, int pageSize);

	
	//3-1.대여 상품 검색 시 전체 개수(검색용)
	public int selectSearchTotal(String keyword);
	
	//3-2. 상품 검색
	public List<Shopping> searchRentProduct(String keyword,int currentPage, int pageSize);

}
