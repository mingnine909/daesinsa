package kh.spring.daesinsa.shopbasket.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	public int modifyCount(int sb_amount, String p_id, String poi_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sb_amount", sb_amount);
		map.put("p_id", p_id);
		map.put("poi_id", poi_id);
		return sqlsession.update("Shopbasket.modifyCount", map);
	}

	public int deleteShopbasket(Shopbasket shopbasket) {
		return sqlsession.delete("Shopbasket.deleteShopbasket",shopbasket);
	}


	
	}
	
	
	


