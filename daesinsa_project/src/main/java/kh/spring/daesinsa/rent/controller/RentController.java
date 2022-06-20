package kh.spring.daesinsa.rent.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.daesinsa.rent.model.service.RentServiceImpl;
import kh.spring.daesinsa.shopping.domain.Shopping;
import kh.spring.daesinsa.shopping.model.service.ShoppingServiceImpl;

@Component
@RequestMapping("/rent")
public class RentController {

private static final Logger logger = LoggerFactory.getLogger(RentController.class);
	
	@Autowired
	private RentServiceImpl service;
	
	//대여 메인페이지 열기 
	@GetMapping("/main")
	public String home() {
		return "rent/rentmain";
	}
	
	//1.대여 상품 카테고리별 값
	@GetMapping("/rentlist")
	public ModelAndView selectRentListCa(
			ModelAndView mv
			,@RequestParam("c_id") String c_id
			,@RequestParam("c_first") String c_first
			,Shopping shopping
			,@RequestParam(name = "page", defaultValue = "1") int currentPage
			) {

		final int pageSize = 9;
		final int pageBlock = 3;
		int totalCnt = service.selectCaRentTotal(c_id);
		// paging 처리
		int pageCnt = (totalCnt / pageSize) + (totalCnt % pageSize == 0 ? 0 : 1);
		int startPage = 1;
		int endPage = 1;
		if (currentPage % pageBlock == 0) {
			startPage = ((currentPage / pageBlock) - 1) * pageBlock + 1;
		} else {
			startPage = (currentPage / pageBlock) * pageBlock + 1;
		}
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCnt) {
			endPage = pageCnt;
		}
			
		mv.addObject("startPage", startPage);
		mv.addObject("endPage", endPage);
		mv.addObject("pageCnt", pageCnt);
		mv.addObject("currentPage", currentPage);
		mv.addObject("c_id", c_id);
		mv.addObject("c_first", c_first);
		mv.addObject("Rent", service.selectRentListCa(shopping,currentPage,pageSize));	
		mv.setViewName("rent/rentlist");
		return mv;
	}
	
	//3. 대여 상품 검색
		@GetMapping("/search")
		public ModelAndView searchListCa(
				ModelAndView mv
				,@RequestParam(name = "keyword", defaultValue = "") String keyword
				,@RequestParam(name = "page", defaultValue = "1") int currentPage
				){
			
			final int pageSize = 9;
			final int pageBlock = 3;
			int totalCnt = service.selectSearchTotal(keyword);
			// paging 처리
			int pageCnt = (totalCnt / pageSize) + (totalCnt % pageSize == 0 ? 0 : 1);
			int startPage = 1;
			int endPage = 1;
			if (currentPage % pageBlock == 0) {
				startPage = ((currentPage / pageBlock) - 1) * pageBlock + 1;
			} else {
				startPage = (currentPage / pageBlock) * pageBlock + 1;
			}
			endPage = startPage + pageBlock - 1;
			if (endPage > pageCnt) {
				endPage = pageCnt;
			}
				
			mv.addObject("startPage", startPage);
			mv.addObject("endPage", endPage);
			mv.addObject("pageCnt", pageCnt);
			mv.addObject("currentPage", currentPage);
			mv.addObject("keyword", keyword);
			mv.addObject("Rent", service.searchRentProduct(keyword,currentPage,pageSize));	
			mv.setViewName("rent/rentsearch");
			return mv;
			
		}
	
	
}
