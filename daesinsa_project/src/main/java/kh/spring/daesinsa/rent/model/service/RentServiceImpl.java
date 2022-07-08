package kh.spring.daesinsa.rent.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kh.spring.daesinsa.rent.domain.Rental;
import kh.spring.daesinsa.rent.model.dao.RentDao;
import kh.spring.daesinsa.shopping.domain.ProductQna;
import kh.spring.daesinsa.shopping.domain.ProductReview;
import kh.spring.daesinsa.shopping.domain.Shopping;
import kh.spring.daesinsa.shopping.model.dao.ShoppingDao;

@Service
public class RentServiceImpl implements RentService {
	
	@Autowired
	private RentDao dao;

	//메인 최신대여 목록 조회
	@Override
	public List<Shopping> selectNewRentalList() {
		return dao.selectNewRentalList();
	}

	// 대여 상품 전체 조회 (페이징처리용)
	@Override
	public int selectCaRentTotal(String c_id) {
		return dao.selectCaRentTotal(c_id);
	}
	//1-1.대여 상품 카테고리별 조회
	@Override
	public List<Shopping> selectRentListCa(Shopping shopping, int currentPage, int pageSize) {
		return dao.selectRentListCa(shopping, currentPage, pageSize);
	}
	
	//2. 대여 상품 상세조회
	@Override
	public Shopping detailProduct(Shopping shopping) {
	
		return dao.detailProduct(shopping);
	}
	
	//3-1.대여 상품 검색 시 전체 개수(검색용)
		@Override
		public int selectSearchTotal(String keyword) {
			return dao.selectSearchTotal(keyword);
		}
	
	//3-2.대여 상품 검색
	public List<Shopping> searchRentProduct(String keyword) {
		
		return dao.searchRentProduct(keyword);
	}

	//4-1. 상품 qna
	@Override
	public List<ProductQna> selectQnaList(String p_id) {
		return dao.selectQnaList(p_id);
	}
	
	
	//4-1. 상품 qna
	@Override
	public int selectQnaTotal(String p_id) {
		return dao.selectQnaTotal(p_id);
	}


	//5-1. 상품 리뷰
	@Override
	public List<ProductReview> selectReviewList(String p_id) {
		return dao.selectReviewList(p_id);
	}

	//5-2. 상품 리뷰 전체 개수
	@Override
	public int selectReviewTotal(String p_id) {
		return dao.selectReviewTotal(p_id);
	}
	
	// 6-1.상품 대여 + 6-2.번도 동시에 되어야함! ...
//	@Override
//	public int insertRental(Rental rent) {
//		dao.insertRental(rent);
//	}
//	
//	//6-2.상품 대여시 대여 상태 update 
//	@Override
//	public int updateProductRental(String p_id) {
//		return dao.updateProductRental(p_id);
//	}
	
	// 6-1.상품 대여 / 상품 대여시 대여 상태 update 
	@Override
	@Transactional
	public int insertRental(Rental rent) {
		dao.updateProductRental(rent.getP_id());
		return dao.insertRental(rent);
	}


}
