package kh.spring.daesinsa.rent.model.service;

import java.util.List;

import kh.spring.daesinsa.rent.domain.Rental;
import kh.spring.daesinsa.shopping.domain.ProductQna;
import kh.spring.daesinsa.shopping.domain.ProductReview;
import kh.spring.daesinsa.shopping.domain.Shopping;

public interface RentService {

	
	
	
	// 대여 상품 전체 갯수(페이징처리용)
	public int selectCaRentTotal(String c_id);
	
	//1-1.대여 상품 카테고리별 조회
	public List<Shopping> selectRentListCa(Shopping shopping,int currentPage, int pageSize);
	
	
	//2. 대여 상품 상세 조회
	public Shopping detailProduct(Shopping shopping) ;

	
	//3-1.대여 상품 검색 시 전체 개수(검색용)
	public int selectSearchTotal(String keyword);
	
	//3-2. 상품 검색
	public List<Shopping> searchRentProduct(String keyword);
	
	//4-1.상품 qna 
	public List<ProductQna> selectQnaList(String p_id);
	
	//4-2. 상품 qna 전체 개수
	public int selectQnaTotal(String p_id);
	
	//5-1.상품 리뷰
	public List<ProductReview> selectReviewList(String p_id);
	
	//5-2. 상품 리뷰 전체 갯수
	public int selectReviewTotal(String p_id);
	
	// 6-1.상품 대여
	public int insertRental(Rental rent);
	
	//6-2.상품 대여시 대여 상태 update 
	public int updateProductRental(String p_id);
}
