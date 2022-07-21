package kh.spring.daesinsa.shopping.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.daesinsa.member.domain.Member;
import kh.spring.daesinsa.member.security.CustomUserDetails;
import kh.spring.daesinsa.shopbasket.domain.Shopbasket;
import kh.spring.daesinsa.shopping.domain.ProductQna;
import kh.spring.daesinsa.shopping.domain.ProductReview;
import kh.spring.daesinsa.shopping.domain.Shopping;
import kh.spring.daesinsa.shopping.domain.WishList;
import kh.spring.daesinsa.shopping.model.service.ShoppingService;



@Controller
@RequestMapping("/shop")
public class ShoppingController {
	
	@Autowired
	private ShoppingService service;
	
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
		if(sort==2) {
			mv.addObject("Shopping", service.selectListCaNew(shopping,currentPage,pageSize));
			return mv;	
		}
		else if(sort==3){
			mv.addObject("Shopping", service.selectListCaMin(shopping,currentPage,pageSize));
			return mv;
		} else if (sort==4) {
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
			,ProductQna pQna
			,ProductReview pReview
			,WishList wishlist
			,@RequestParam("p_id") String p_id
			) {
		int totalCntRe = service.selectReviewTotal(pReview); //리뷰 개수
		int totalCntQna = service.selectQnaTotal(pQna); // qna 개수
		
		
		
	    String username = null;
        //시큐리티 로그인 정보 가져오기
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(principal.equals("anonymousUser") ){
           username = null;
        }else {
           username = ((UserDetails)principal).getUsername();
        }
        
        //위시리스트 아이디
        wishlist.setM_id(username);
        
		//상품 id가 null이면 다시 목록으로 
		if(shopping.getP_id()==null) {
			mv.setViewName("redirect:/shop/shoplist");
			return mv;
		}
		

		mv.addObject("username", username);
		mv.addObject("wishlist",service.selectWish(wishlist));
		mv.addObject("detail",service.detailProduct(shopping));
		mv.addObject("ProductQna",service.selectQnaList(pQna));
		mv.addObject("ProductReview", service.selectReviewList(pReview));
		mv.addObject("totalCntRe", totalCntRe);
		mv.addObject("totalCntQna", totalCntQna);
		mv.setViewName("shop/detail");
	
		return mv;
		
	}
	
	//3. 쇼핑 상품 검색
	@GetMapping("/search")
	public ModelAndView searchListSearch(
			ModelAndView mv
			,@RequestParam(name = "keyword", defaultValue = "") String keyword
			){
		
		int searchCnt = service.selectSearchTotal(keyword);
		mv.addObject("keyword", keyword);
		mv.addObject("searchCnt", searchCnt);
		mv.addObject("Shopping", service.searchProduct(keyword));	
		mv.setViewName("shop/shopsearch");
		return mv;
		
	}
	
	//4-1.2. 상품문의 작성
	@GetMapping("/qnainsert")
	public ModelAndView pQnaInsert(
			ModelAndView mv
			,@RequestParam("p_id") String p_id
			) {	
		
		
		mv.addObject("p_id", p_id);
		mv.setViewName("shop/qnainsert");
		return mv;
	}
	
	//4-3. 상품문의 작성
		@PostMapping(value="/qnainsert.do")
		@ResponseBody
		public int pQnaInsertDo(
			ModelAndView mv,
			ProductQna pQna
				) {		
			
			//시큐리티 로그인 정보 가져오기
//			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//			String username = ((UserDetails)principal).getUsername();	
		
			 String username = null;
	         //시큐리티 로그인 정보 가져오기
	         Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	         if(principal.equals("anonymousUser") ){
	        	 //로그인 되어있지 않은 사용자는 2리턴 -> window.close() 시킴
	            return 2;
	         }else {
	            username = ((UserDetails)principal).getUsername();
	         }
	         
	     	pQna.setM_id(username);
	     	
			int result = service.pQnaInsertDo(pQna);
			System.out.println(result);
//			return String.valueOf(result);
			return result;
		}
		
	
	//4-4-1. 상품문의 답변
		@PostMapping("/qnaanswer")
		public ModelAndView pQnaAnswer(ModelAndView mv
				,ProductQna pQna
				,@RequestParam("pq_content_copy") String pq_content_copy
				) {
		
			mv.addObject("pq_content_copy", pq_content_copy);
			mv.addObject("pQna",service.selectProductQna(pQna));
			mv.setViewName("shop/qnaanswer");
			return mv;
		}
		
		//4-4-2. 상품문의 답변
		@PostMapping("/qnaanswer.do")
		@ResponseBody
		public int pQnaAnswerDo(
				ModelAndView mv,
				ProductQna pQna
					) {	
				int result = service.pQnaAnswerDo(pQna);
			
				return result;
			}
		
		
		//4-4-3. 상품문의 삭제
		@PostMapping(value="/pqnadelete", produces ="text/plain;charset=UTF-8")
		@ResponseBody
		public String deleteBoard(
				@RequestParam(name="pq_qref", required = false) int pq_qref
			) {
			int result = service.pQnaDeleteDo(pq_qref);
			String msg ="";
			if(result>0) {
				msg = "해당 문의가 삭제되었습니다.";
			}else {
				msg = "삭제 실패";
			}

		return msg;
		}
		
		//5. 장바구니 담기
		@PostMapping(value="/insertsb.do")
		@ResponseBody
		public int insertShopBasket(Shopbasket shopbasket) {
			
			
			 String username = null;
	         //시큐리티 로그인 정보 가져오기
	         Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	         if(principal.equals("anonymousUser") ){
	        	 //로그인 되어있지 않은 사용자는 2리턴 ->  ajax로 로그인 페이지로 이동
	            return 2;
	         }else {
	            username = ((UserDetails)principal).getUsername();
	         }
			
			shopbasket.setM_id(username);
			
			int result = service.insertShopBasket(shopbasket);
			return result;
			
		}
	
		
		//6-1.위시리스트 담기
		@PostMapping ("/wishlist.do")
		@ResponseBody
		public int insertWishList(WishList wishlist
				) {
			 String username = null;
	         //시큐리티 로그인 정보 가져오기
	         Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	         if(principal.equals("anonymousUser") ){
	        	 //로그인 되어있지 않은 사용자는 2리턴 ->  ajax로 로그인 페이지로 이동
	            return 2;
	         }else {
	            username = ((UserDetails)principal).getUsername();
	         }
			
			wishlist.setM_id(username);
			
			int result = service.insertWishList(wishlist);
			return result;
		}
		
		//6-2. 위시리스트 삭제
		@PostMapping("/delwishlist")
		@ResponseBody
		public int deleteWishList(WishList wishlist
				) {
			 String username = null;
	         //시큐리티 로그인 정보 가져오기
	         Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	         username = ((UserDetails)principal).getUsername();
			wishlist.setM_id(username);
			
			int result = service.deleteWishList(wishlist);
			return result;
		}
		
		
	
		//위시리스트 목록 
		@GetMapping ("/wishlist")
		public ModelAndView listWishList(ModelAndView mv
				,WishList wishlist
				) {
			
			 String username = null;
			 //시큐리티 로그인 정보 가져오기
	         Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	         username = ((UserDetails)principal).getUsername();
			

			mv.addObject("wish", service.listWishList(username));
			mv.setViewName("shop/wishlist");
			return mv;
		}
		
		

		
	
}
