package kh.spring.daesinsa.shopping.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.daesinsa.shopping.domain.ProductImg;
import kh.spring.daesinsa.shopping.domain.ProductQna;
import kh.spring.daesinsa.shopping.domain.ProductReview;
import kh.spring.daesinsa.shopping.domain.Shopping;

@Repository
public class ShoppingDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	//0. 쇼핑 상품 카테고리별 전체 갯수(페이징처리용)
	public int selectCaTotal(String c_id) {
		return sqlsession.selectOne("Shopping.selectCaTotal",c_id);
	}
	
	//1. 쇼핑상품 전체 목록 조회
	public List<Shopping> selectListAll(){
		return sqlsession.selectList("Shopping.selectListAll");
	}
	
//	//1-1.쇼핑 상품 카테고리별 조회
//	public List<Shopping> selectListCa(Shopping shopping ,int currentPage, int pageSize){
//		return sqlsession.selectList("Shopping.selectListCa",shopping
//				,new RowBounds((currentPage-1)*pageSize,pageSize)
//				);
//	}
	
	
	//1-1.쇼핑 상품 카테고리별 조회
		public List<Shopping> selectListCa(Shopping shopping ,int currentPage, int pageSize){
			List<Shopping> shoppinglist = sqlsession.selectList("Shopping.selectListCa",shopping
					,new RowBounds((currentPage-1)*pageSize,pageSize)
					);
			for(Shopping svo : shoppinglist) {
				List<ProductImg> pImg = sqlsession.selectList("Shopping.selectListCaImg", svo.getP_id());
				svo.setP_img_list(pImg);
			}
			return shoppinglist;
		}
	//1-2. 낮은가격순
	public List<Shopping> selectListCaMin(Shopping shopping ,int currentPage, int pageSize){
		List<Shopping> shoppingMinlist = sqlsession.selectList("Shopping.selectListCaMin",shopping
				,new RowBounds((currentPage-1)*pageSize,pageSize)
				);
		for(Shopping svo : shoppingMinlist) {
			List<ProductImg> pImg = sqlsession.selectList("Shopping.selectListCaMinImg", svo.getP_id());
			svo.setP_img_list(pImg);
		}
		return shoppingMinlist;
	}
	
	
	//1-3. 높은가격순
	public List<Shopping> selectListCaMax(Shopping shopping ,int currentPage, int pageSize){
		List<Shopping> shoppingMaxlist = sqlsession.selectList("Shopping.selectListCaMax",shopping
				,new RowBounds((currentPage-1)*pageSize,pageSize)
				);
		for(Shopping svo : shoppingMaxlist) {
			List<ProductImg> pImg = sqlsession.selectList("Shopping.selectListCaMaxImg", svo.getP_id());
			svo.setP_img_list(pImg);
		}
		return shoppingMaxlist;
	}
	
	//2. 쇼핑상품 상세 조회
	public Shopping detailProduct(Shopping shopping) {
		return sqlsession.selectOne("Shopping.detailProduct",shopping);
	}
	
	
	//3-1.쇼핑 상품 검색 시 전체 개수(검색용)
	public int selectSearchTotal(String keyword) {
		return sqlsession.selectOne("Shopping.selectSearchTotal",keyword);
	}
	//3-2. 쇼핑 상품 검색
	public List<Shopping> searchProduct(String keyword) {
		return sqlsession.selectList("Shopping.searchProduct",keyword);
	}
	
	//4-1. 상품 qna 
	public List<ProductQna> selectQnaList(String p_id){
		return sqlsession.selectList("Shopping.selectQnaList",p_id);
	}
	
	//4-2 상품 qna 전체 개수
	public int selectQnaTotal(String p_id) {
		return sqlsession.selectOne("Shopping.selectQnaTotal",p_id);
	}
	
	
	//5-1. 상품 리뷰
	public List<ProductReview> selectReviewList(String p_id){
		return sqlsession.selectList("Shopping.selectReviewList",p_id);
	}
	
	//5-2. 상품 리뷰 전체 개수
	public int selectReviewTotal(String p_id) {
		return sqlsession.selectOne("Shopping.selectReviewTotal",p_id);
	}
}
