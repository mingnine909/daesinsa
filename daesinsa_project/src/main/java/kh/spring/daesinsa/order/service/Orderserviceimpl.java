package kh.spring.daesinsa.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.configurers.userdetails.DaoAuthenticationConfigurer;
import org.springframework.stereotype.Service;

import kh.spring.daesinsa.order.dao.OrderDao;
import kh.spring.daesinsa.order.domain.Order;
import kh.spring.daesinsa.shopping.domain.WishList;

@Service
public class Orderserviceimpl implements OrderService {
	
	@Autowired
	private OrderDao dao;
	
	
	
	@Override
	public int insertorder(String m_id, List<String> p_id, List<Integer> sb_amount) {
		return dao.insertorder(m_id, p_id, sb_amount);
	}
	@Override
	public List<Order> orderlist(String m_id, String p_id, int sb_amount) {
		return  dao.orderlist(m_id, p_id, sb_amount);
	}

}
