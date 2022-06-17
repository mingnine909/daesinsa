package kh.spring.daesinsa.shopping.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.daesinsa.shopping.domain.Shopping;

@Repository
public class ShoppingDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	//0. 쇼핑 상품 전체 갯수(페이징처리용)
	public int selectTotal(String c_id) {
		return sqlsession.selectOne("Shopping.selectTotal",c_id);
	}
	
	//1. 쇼핑상품 전체 목록 조회
	public List<Shopping> selectListAll(){
		return sqlsession.selectList("Shopping.selectListAll");
	}
	
	//1-1.쇼핑 상품 카테고리별 조회
	public List<Shopping> selectListCa(Shopping shopping ,int currentPage, int pageSize){
		return sqlsession.selectList("Shopping.selectListCa",shopping
				,new RowBounds((currentPage-1)*pageSize,pageSize)
				);
	}

}
