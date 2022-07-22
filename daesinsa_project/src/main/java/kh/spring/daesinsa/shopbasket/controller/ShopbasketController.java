package kh.spring.daesinsa.shopbasket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.daesinsa.shopbasket.service.ShopbasketService;

@Controller
@RequestMapping("/shopbasket")
public class ShopbasketController {

	@Autowired
	private ShopbasketService service;
	
	
	
	@GetMapping("/list")
	public ModelAndView shopbasketlist(
			ModelAndView mv			
			) {
	//	Model.addAttribute("shopbasketInfo", ShopbasketService.getShopbasketList(m_id));
		
		mv.setViewName("shopbasket/shopbasket");
				
		return mv;
	}
	
	
	@PostMapping("/update")
	public ModelAndView shopbasketupdate(
			ModelAndView mv			
			) {
	//	Model.addAttribute("shopbasketInfo", ShopbasketService.getShopbasketList(m_id));
		
		mv.setViewName("shopbasket/shopbasket");
				
		return mv;
	}
	

	@PostMapping("/delete")
	public ModelAndView shopbasketdelete(
			ModelAndView mv			
			) {
	//	Model.addAttribute("shopbasketInfo", ShopbasketService.getShopbasketList(m_id));
		
		mv.setViewName("shopbasket/shopbasket");
				
		return mv;
	}
	
}
