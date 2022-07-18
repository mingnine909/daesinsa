package kh.spring.daesinsa.rent.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.daesinsa.rent.domain.Rental;
import kh.spring.daesinsa.rent.model.service.RentService;

import kh.spring.daesinsa.shopping.domain.Shopping;

@Component
@RequestMapping("/rent")
public class RentController {


	
	@Autowired
	private RentService service;
	
	//대여 메인페이지 열기 
	@GetMapping("/main")
	public ModelAndView home(ModelAndView mv) {
		
		mv.addObject("rmain", service.selectNewRentalList());	
		mv.setViewName("rent/rentmain");
		
		return mv;
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
		

	    String username = null;
        //시큐리티 로그인 정보 가져오기
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(principal.equals("anonymousUser") ){
           System.out.println(">>>>>>>>>>>>>>> 비로그인 시 username에 null 넣고 db로 전달. 그러나 이런경우 보통 로그인 페이지로 이동하도록 해야함. url pattern을 활용하세요.");
           username = null;
        }else {
           username = ((UserDetails)principal).getUsername();
        }
        
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

		mv.addObject("username",username);
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
				){
		
			
			int searchCnt = service.selectSearchTotal(keyword);
			mv.addObject("searchCnt", searchCnt);
			mv.addObject("keyword", keyword);
			mv.addObject("Rent", service.searchRentProduct(keyword));	
			mv.setViewName("rent/rentsearch");
			return mv;
			
		}
		
		
		//4. 대여 작성 폼
		@PostMapping("/rentinsert")
		public ModelAndView rentInsert (
				ModelAndView mv
				,@RequestParam("p_id") String p_id
				,@RequestParam("p_name") String p_name
				) {
			mv.addObject("p_id", p_id); //상품번호 가지고 이동
			mv.addObject("p_name", p_name); 
			
			mv.setViewName("rent/rentinsert");
			
			return mv;
		}
		
		//5. 상품 대여
		@PostMapping(value="/rentinsert.do")
		@ResponseBody
		public int rentInsertDo (
				ModelAndView mv
			,Rental rent
				) {
			//시큐리티 로그인 정보 가져오기
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String username = ((UserDetails)principal).getUsername();
			
			rent.setM_id(username);
			
			int result = service.insertRental(rent);
			return result;
		}
		
		//6.대여 성공 후 이동 페이지
		@GetMapping("/rentalss")
		public ModelAndView rentalss(ModelAndView mv) {
			
			mv.setViewName("rent/rentalss");
			
			return mv;
		}
		
	
	
}
