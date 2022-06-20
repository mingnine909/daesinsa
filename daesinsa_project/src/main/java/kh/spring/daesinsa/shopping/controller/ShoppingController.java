package kh.spring.daesinsa.shopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.daesinsa.shopping.domain.ProductQna;
import kh.spring.daesinsa.shopping.domain.Shopping;
import kh.spring.daesinsa.shopping.model.service.ShoppingServiceImpl;


@Controller
@RequestMapping("/shop")
public class ShoppingController {
	
	@Autowired
	private ShoppingServiceImpl service;
	
	//1-1. 쇼핑상품 카테고리별 값
	@GetMapping("/shoplist")
	public ModelAndView selectListCa(
			ModelAndView mv
			,@RequestParam("c_id") String c_id
			,@RequestParam("c_first") String c_first
			,@RequestParam(name= "sort", defaultValue = "1") int sort 
			,Shopping shopping
			,@RequestParam(name = "page", defaultValue = "1") int currentPage
			) {

		final int pageSize = 9;
		final int pageBlock = 3;
		int totalCnt = service.selectCaTotal(c_id);
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
		mv.addObject("sort",sort);
		
		if(sort==2){
			mv.addObject("Shopping", service.selectListCaMin(shopping,currentPage,pageSize));
			return mv;
		} else if (sort==3) {
			mv.addObject("Shopping", service.selectListCaMax(shopping,currentPage,pageSize));
			return mv;
		}
		mv.addObject("Shopping", service.selectListCa(shopping,currentPage,pageSize));	
		mv.setViewName("shop/shoplist");
		return mv;
	}
	
	
	//2. 쇼핑 상품 상세조회
	@GetMapping("/detail")
	public ModelAndView detailProduct(
			Shopping shopping
			,ModelAndView mv
			,@RequestParam("p_id") String p_id
			) {
		if(shopping.getP_id()==null) {
			mv.setViewName("redirect:/shop/shoplist");
			return mv;
		}
		mv.addObject("detail",service.detailProduct(shopping));
		mv.addObject("ProductQna",service.selectQnaList(p_id));
		mv.setViewName("shop/detail");
		return mv;
		
	}
	
	//3. 쇼핑 상품 검색
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
		mv.addObject("Shopping", service.searchProduct(keyword,currentPage,pageSize));	
		mv.setViewName("shop/shopsearch");
		return mv;
		
	}
	
	
}
