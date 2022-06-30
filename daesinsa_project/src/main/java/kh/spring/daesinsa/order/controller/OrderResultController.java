package kh.spring.daesinsa.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("/orderresult")
public class OrderResultController {
	
	@GetMapping("/list")
	public ModelAndView orderresult(ModelAndView mv) {
		
		mv.setViewName("/order/orderresult");
		System.out.println(mv);
		return mv;
	}
	
	
	

}
