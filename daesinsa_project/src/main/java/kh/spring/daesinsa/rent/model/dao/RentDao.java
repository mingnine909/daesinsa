package kh.spring.daesinsa.rent.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.daesinsa.rent.domain.Rental;
import kh.spring.daesinsa.shopping.domain.ProductImg;
import kh.spring.daesinsa.shopping.domain.ProductQna;
import kh.spring.daesinsa.shopping.domain.ProductReview;
import kh.spring.daesinsa.shopping.domain.Shopping;

@Repository
public class RentDao {

	@Autowired
	private SqlSession sqlsession;

	// 0.대여 전체 갯수(페이징 처리용)
	public int selectCaRentTotal(String c_id) {
		return sqlsession.selectOne("Rent.selectCaRentTotal", c_id);
	}

	//메인 최신대여 목록 조회
	public List<Shopping> selectNewRentalList(){
		return sqlsession.selectList("Rent.selectNewRentalList");
		}
		
	// 1-1.대여 상품 카테고리별 조회
	public List<Shopping> selectRentListCa(Shopping shopping, int currentPage, int pageSize) {
		List<Shopping> shoppinglist = sqlsession.selectList("Rent.selectRentListCa", shopping,
				new RowBounds((currentPage - 1) * pageSize, pageSize));
		for (Shopping svo : shoppinglist) {
			List<ProductImg> pImg = sqlsession.selectList("Rent.selectRentListCaImg", svo.getP_id());
			svo.setP_img_list(pImg);
		}
		return shoppinglist;
	}

	// 2. 대여상품 상세 조회
	public Shopping detailProduct(Shopping shopping) {
		return sqlsession.selectOne("Rent.detailProduct", shopping);
	}

	// 3-1.대여 상품 검색 시 전체 개수(검색용)
	public int selectSearchTotal(String keyword) {
		return sqlsession.selectOne("Rent.selectSearchTotal", keyword);
	}

	// 3-2. 대여 상품 검색
	public List<Shopping> searchRentProduct(String keyword) {
		return sqlsession.selectList("Rent.searchRentProduct", keyword);
	}

	// 4-1. 상품 qna
	public List<ProductQna> selectQnaList(String p_id) {
		return sqlsession.selectList("Rent.selectQnaList", p_id);
	}

	// 4-2 상품 qna 전체 개수
	public int selectQnaTotal(String p_id) {
		return sqlsession.selectOne("Rent.selectQnaTotal", p_id);
	}

	// 5-1. 상품 리뷰
	public List<ProductReview> selectReviewList(String p_id) {
		return sqlsession.selectList("Rent.selectReviewList", p_id);
	}

	// 5-2. 상품 리뷰 전체 개수
	public int selectReviewTotal(String p_id) {
		return sqlsession.selectOne("Rent.selectReviewTotal", p_id);
	}
	
	// 6-1.상품 대여
	public int insertRental(Rental rent) {
		return sqlsession.insert("Rent.insertRental",rent);
	}
	
	//6-2.상품 대여시 대여 상태 update 
	public int updateProductRental(String p_id) {
		return sqlsession.update("Rent.updateProductRental",p_id);
	}

}
