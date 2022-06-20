package kh.spring.daesinsa.rent.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.daesinsa.shopping.domain.Shopping;

@Repository
public class RentDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	//0.대여 전체 갯수(페이징 처리용)
	public int selectCaRentTotal(String c_id) {
		return sqlsession.selectOne("Rent.selectCaRentTotal",c_id);
	}
	//1-1.대여 상품 카테고리별 조회
	public List<Shopping> selectRentListCa(Shopping shopping ,int currentPage, int pageSize){
		return sqlsession.selectList("Rent.selectRentListCa",shopping
				,new RowBounds((currentPage-1)*pageSize,pageSize)
				);
	}
	
	//3-1.대여 상품 검색 시 전체 개수(검색용)
	public int selectSearchTotal(String keyword) {
		return sqlsession.selectOne("Rent.selectSearchTotal",keyword);
	}
	
	//3-2. 대여 상품 검색
		public List<Shopping> searchRentProduct(String keyword,int currentPage, int pageSize) {
			return sqlsession.selectList("Rent.searchRentProduct",keyword
					,new RowBounds((currentPage-1)*pageSize,pageSize)
				);
		}

}
