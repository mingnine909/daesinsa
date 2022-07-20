package kh.spring.daesinsa.cs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.daesinsa.common.FileUpload;
import kh.spring.daesinsa.cs.domain.Coupon;
import kh.spring.daesinsa.cs.domain.CsQna;
import kh.spring.daesinsa.cs.model.service.CsService;
import kh.spring.daesinsa.shopbasket.domain.Shopbasket;


@Controller
@RequestMapping("/cs")
public class CsController {
	
	@Autowired
	private CsService service;
	
	@Autowired 
	private FileUpload commonFile;
	
	//1. 공지사항 목록
	@GetMapping("/notice")
	public ModelAndView noticeList(
			ModelAndView mv
			,@RequestParam(name = "page", defaultValue = "1") int currentPage
			) {
		
		final int pageSize = 5;
		final int pageBlock = 3;
		int totalNotice = service.noticeTotalCnt();
		// paging 처리
				int pageCnt = (totalNotice / pageSize) + (totalNotice % pageSize == 0 ? 0 : 1);
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
		mv.addObject("totalNotice", totalNotice);
		mv.addObject("notice", service.noticeList(currentPage, pageSize));
		mv.setViewName("cs/notice");
		return mv;
	}
	
	//1-2. 공지사항 읽기 
	@GetMapping("/noticeread")
	public ModelAndView noticeRead(
			ModelAndView mv
			,@RequestParam(name="cs_nno", defaultValue = "0") int cs_nno
			) {
		
		if(cs_nno==0) {
			mv.setViewName("redirect:/cs/notice");
			return mv;
		}
		
		mv.addObject("notice",service.noticeRead(cs_nno));
		mv.setViewName("cs/noticeread");
		return mv;
		
	}

	//2. 자주묻는 질문
	@GetMapping("faq")
	public ModelAndView faqList(
			ModelAndView mv
			,@RequestParam(name="cs_fcategory",defaultValue = "0")int cs_fcategory
			) {
		
		if(cs_fcategory!=0) {
		mv.addObject("faq", service.faqListCa(cs_fcategory));	
		return mv;
		}
		mv.addObject("faq", service.faqList());
		mv.setViewName("cs/faq");
		return mv;
	}
	
	//3-1. 1:1 문의
	@GetMapping("qnaMain")
	public ModelAndView qnaMain(ModelAndView mv , CsQna csqna) {
		
		//시큐리티 로그인 정보 가져오기
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = ((UserDetails)principal).getUsername();
		
		csqna.setM_id(username);

		mv.addObject("username", username);
		
		mv.setViewName("cs/csqnamain");
		return mv;
	}
	
	//3-1. 1:1 문의 작성 페이지 열기
	@GetMapping("qna")
	public ModelAndView qnaPage(ModelAndView mv
			,CsQna csqna
			
			) {
		
		//시큐리티 로그인 정보 가져오기
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = ((UserDetails)principal).getUsername();
		
		csqna.setM_id(username);

		mv.addObject("username", username);
		mv.setViewName("cs/csqnainsert");
		return mv;
	}
	
	
	//3-2. 1:1 문의 등록
	@PostMapping("qnainsert")
	public ModelAndView insertQna(ModelAndView mv
			,CsQna csqna
			,@RequestParam(name = "cs_qfile", required = false) MultipartFile cs_qfile
			, HttpServletRequest req
			) {
		
		//시큐리티 로그인 정보 가져오기
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = ((UserDetails)principal).getUsername();
		
		csqna.setM_id(username);
		
		if (cs_qfile != null) {
			String rename_filename = commonFile.saveFile(cs_qfile, req);
			if (rename_filename != null) {
				// 파일저장에 성공하면 DB에 저장할 데이터를 채워줌
			csqna.setCs_qfile(cs_qfile.getOriginalFilename());
			}
		}
		
		int result = service.insertQna(csqna);
		mv.setViewName("redirect:/cs/qnaMain");
		return mv;
	}
	
	
	//4-1.공지사항 이벤트 페이지 열기
	@GetMapping("noticeEvent")
	public ModelAndView noticeEvent(ModelAndView mv) {
		
	    String username = null;
        //시큐리티 로그인 정보 가져오기
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(principal.equals("anonymousUser") ){
           username = null;
        }else {
           username = ((UserDetails)principal).getUsername();
        }
        
		mv.addObject("username",username);
		mv.addObject("coupon",service.selectCoupon(username));
		mv.setViewName("cs/event");
		return mv;
	}
	
	//4-2.쿠폰 발급받기
	@PostMapping("coupon")
	@ResponseBody
	public int insertCoupon(Coupon coupon) {
	
		 String username = null;
         //시큐리티 로그인 정보 가져오기
         Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
         if(principal.equals("anonymousUser") ){
        	 username = null;
         }else {
            username = ((UserDetails)principal).getUsername();
         }
		
		coupon.setM_id(username);
		
		int result = service.insertCoupon(coupon);
		return result;
	
	}
}
