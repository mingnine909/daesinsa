package kh.spring.daesinsa.order.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import kh.spring.daesinsa.order.domain.Order;
import kh.spring.daesinsa.shopping.domain.WishList;

public interface OrderService {


	
	public List<Order> orderlist(String m_id, String p_id, int sb_amount);


	public int insertorder(String m_id, List<String> p_id, List<Integer> sb_amount);


	
	
}
