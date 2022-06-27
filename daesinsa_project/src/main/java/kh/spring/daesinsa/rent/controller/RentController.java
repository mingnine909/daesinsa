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
	
	
	//2. 대여 상품 상세조회
	@GetMapping("/detail")
	public ModelAndView detailProduct(
			Shopping shopping
			,ModelAndView mv
			,@RequestParam("p_id") String p_id
			,@RequestParam(name = "page", defaultValue = "1") int currentPage
			) {
		int totalCntRe = service.selectReviewTotal(p_id); //리뷰 개수
		int totalCntQna = service.selectQnaTotal(p_id); // qna 개수
		
		
		final int pageSize = 5;
		final int pageBlock = 3;
		// paging 처리
		int pageCnt = (totalCntQna / pageSize) + (totalCntQna % pageSize == 0 ? 0 : 1);
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
	
		
		if(shopping.getP_id()==null) {
			mv.setViewName("redirect:/rent/rentlist");
			return mv;
		}

		mv.addObject("detail",service.detailProduct(shopping));
		mv.addObject("ProductQna",service.selectQnaList(p_id));
		mv.addObject("ProductReview", service.selectReviewList(p_id));
		mv.addObject("totalCntRe", totalCntRe);
		mv.addObject("totalCntQna", totalCntQna);
		mv.addObject("startPage", startPage);
		mv.addObject("endPage", endPage);
		mv.addObject("pageCnt", pageCnt);
		mv.addObject("currentPage", currentPage);
		mv.setViewName("rent/detail");
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
		
		
		//4. 대여 작성 폼
		@GetMapping("/rentinsert")
		public ModelAndView rentInsert (
				ModelAndView mv
				,@RequestParam("p_id") String p_id
				) {
			mv.addObject("p_id", p_id); //상품번호 가지고 이동
			mv.setViewName("rent/rentinsert");
			
			return mv;
		}
		
	
	
}
