package kh.spring.daesinsa.shopbasket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.daesinsa.shopbasket.domain.Shopbasket;
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
		String m_id = null;
		//???? ??? ?? ????
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		m_id = ((UserDetails)principal).getUsername();
        
		mv.addObject("shopbasketInfo", service.getShopbasketList(m_id));
		
		mv.setViewName("shopbasket/shopbasket");
				
		return mv;
	}
	
	
	@PostMapping("/update")
	public ModelAndView shopbasketupdate(
			ModelAndView mv	
			, @RequestParam("sb_amount") int sb_amount
			, @RequestParam("p_id") String p_id
			, @RequestParam("poi_id") String poi_id
			) {
		String m_id = null;
		//???? ??? ?? ????
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		m_id = ((UserDetails)principal).getUsername();
		
		int result = service.modifyCount(sb_amount, p_id, poi_id);
        
		mv.addObject("shopbasketInfo", service.getShopbasketList(m_id));
		
		mv.setViewName("shopbasket/shopbasket");
				
		return mv;
	}
	

	@PostMapping("/delete")
	public int deleteShopbasket(Shopbasket shopbasket		
			) {
		String m_id = null;
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		m_id = ((UserDetails)principal).getUsername();
        
		shopbasket.setM_id(m_id);
				
		int result = service.deleteShopbasket(shopbasket);	

		return result;
	}
}
	

