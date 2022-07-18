package kh.spring.daesinsa.shopping.model.service;

import java.util.List;

import kh.spring.daesinsa.shopbasket.domain.Shopbasket;
import kh.spring.daesinsa.shopping.domain.ProductQna;
import kh.spring.daesinsa.shopping.domain.ProductReview;
import kh.spring.daesinsa.shopping.domain.Shopping;
import kh.spring.daesinsa.shopping.domain.WishList;

public interface ShoppingService {
	
	

		
	//0. 쇼핑 상품 전체 갯수(페이징처리용)
	public int selectCaTotal(String c_id);
	
	// 메인 - 최신상품순
	public List<Shopping> selectNewProductList();
	
	//1. 쇼핑상품 전체 목록 조회
	public List<Shopping> selectListAll();

	//1-1.쇼핑 상품 카테고리별 조회
	public List<Shopping> selectListCa(Shopping shopping,int currentPage, int pageSize);
	
	//최신상품순 
	public List<Shopping> selectListCaNew(Shopping shopping ,int currentPage, int pageSize);
	
	//1-2.낮은 가격순
	public List<Shopping> selectListCaMin(Shopping shopping,int currentPage, int pageSize);
	
	//1-3.높은 가격순
	public List<Shopping> selectListCaMax(Shopping shopping,int currentPage, int pageSize);

	//2.쇼핑 상품 상세 조회
	public Shopping detailProduct(Shopping shopping);
	
	//3-1.쇼핑 상품 검색 시 전체 개수(검색용)
	public int selectSearchTotal(String keyword);
	
	//3-2. 상품 검색
	public List<Shopping> searchProduct(String keyword);
	
	//4-1.상품 qna 
	public List<ProductQna> selectQnaList(ProductQna pQna);
	
	//4-2. 상품 qna 전체 개수
	public int selectQnaTotal(ProductQna pQna) ;
	
	//4-3. 상품 qna 작성
	public int pQnaInsertDo(ProductQna pQna);
	
	//4-4-1. 상품 qna 답변 원글 확인
	public ProductQna selectProductQna(ProductQna pQna);
	
	//4-4-2. 상품 qna 답변
	public int pQnaAnswerDo(ProductQna pQna);
	
	//4-4-3. 상품 문의 삭제
	public int pQnaDeleteDo(int pq_qref);
	
	//5-1.상품 리뷰
	public List<ProductReview> selectReviewList(ProductReview pReview);
	
	//5-2. 상품 리뷰 전체 갯수
	public int selectReviewTotal(ProductReview pReview);
	
	//6.장바구니 추가
	public int insertShopBasket(Shopbasket shopbasket);
	
	//7-1. 위시리스트 추가
	public int insertWishList(WishList wishlist);
	
	//7-2. 위시리스트 확인용
	public WishList selectWish(WishList wishlist);
	
	//7-3. 위시리스트 삭제
	public int deleteWishList(WishList wishlist);
	
	//7-4. 위시리스트 목록
	public List<Shopping> listWishList(String username);
	
}
