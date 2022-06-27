package kh.spring.daesinsa.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/order")
public class OrderController {

	
	
	
	@GetMapping("/list")
	public ModelAndView orderlist(
			ModelAndView mv
			) {
//		mv.addObject("", );
		mv.setViewName("order/order");
		System.out.println(mv);
		return mv;
	};
	
	
}
