package kh.spring.daesinsa.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.daesinsa.order.domain.Order;
import kh.spring.daesinsa.order.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	private OrderService service;
	
	
//	@GetMapping("/list")
//	public ModelAndView orderlist(
//			ModelAndView mv
//			, @RequestParam("p_name") String p_name
//			, @RequestParam("p_id") String p_id
//			, @RequestParam("poi_id") String poi_id
//			, @RequestParam("sb_amount") int sb_amount
//			, @RequestParam("p_price") int p_price
//			){
//		//시큐리티 로그인 정보 가져오기
//		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		String m_id = ((UserDetails)principal).getUsername();
//        
//		mv.addObject("orderlist", service.orderlist(m_id, p_name, p_id, poi_id, sb_amount, p_price));
//				
//		
//		mv.setViewName("order/order");
//		System.out.println(mv);
//		return mv;
//	};
	
	@PostMapping("/list")
	public ModelAndView orderlistPost(
			ModelAndView mv
			, @RequestParam(name="p_id",required = false) List<String> p_id
			, @RequestParam(name="sb_amount",required = false) List<Integer> sb_amount
	/*
	 * , @RequestParam(name="p_name",required = false) List<String> p_name
	 * , @RequestParam(name="poi_id",required = false) List<String> poi_id
	 * , @RequestParam(name="p_price",required = false) List<Integer> p_price
	 */
			){
		//시큐리티 로그인 정보 가져오기
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String m_id = ((UserDetails)principal).getUsername();
        //			List<Order> result = service.orderlist(m_id, p_name, p_id, poi_id, sb_amount, p_price);
//	        
			mv.addObject("orderlist", service.insertorder(m_id, p_id,  sb_amount));
//			
			mv.setViewName("order/order");
					
			
		
		return mv;
	};
	
	
}
