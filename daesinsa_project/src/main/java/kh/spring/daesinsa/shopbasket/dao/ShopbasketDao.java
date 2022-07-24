package kh.spring.daesinsa.shopbasket.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.daesinsa.shopbasket.domain.Shopbasket;

@Repository
public class ShopbasketDao {

	@Autowired
	private SqlSession sqlsession;
	
	public List<Shopbasket> getShopbasket(String m_id){
		return sqlsession.selectList("Shopbasket.getShopbasket", m_id);
	}

	public int deleteShopbasket(int p_id) {
		return sqlsession.selectOne("Shopbasket.deleteShopbasket",p_id);
	}
	
	
	public int modifyCount(int sb_amount) {
		return sqlsession.selectOne("Shopbasket.modifyCount",sb_amount);
	}

	


	
	}
	
	
	


