package kh.spring.daesinsa.shopbasket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/shopbasket")
public class ShopbasketController {

	
	
	@GetMapping("/list")
	public ModelAndView shopbasketlist(
			ModelAndView mv			
			) {
		
//		mv.addObject("shopbasketlist", service.selectListCa(shopping,currentPage,pageSize));	
		mv.setViewName("shopbasket/shopbasket");
				
		return mv;
	}
	
	
	
}
