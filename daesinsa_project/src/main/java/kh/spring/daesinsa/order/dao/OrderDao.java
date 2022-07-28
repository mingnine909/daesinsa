package kh.spring.daesinsa.order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.daesinsa.order.domain.Order;
import kh.spring.daesinsa.shopping.domain.WishList;

@Repository
public class OrderDao {
	
	
	
	
	
	
	
	
	
	@Autowired
	private SqlSession sqlsession;

	
	
	public int insertorder(String m_id, List<String> p_id, List<Integer> sb_amount){
		return sqlsession.insert("Order.insertorder", m_id);
	}
	public List<Order> orderlist(String m_id, String p_id, int sb_amount){
		return sqlsession.selectList("Order.orderlist", m_id);
		
	}
	
	
}
