package kh.spring.daesinsa.cs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.daesinsa.cs.domain.CsNotice;
import kh.spring.daesinsa.cs.model.service.CsServiceImpl;

@Controller
@RequestMapping("/cs")
public class CsController {
	
	@Autowired
	private CsServiceImpl service;
	
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
	//1-3.공지사항 이벤트
	@GetMapping("noticeEvent")
	public ModelAndView noticeEvent(ModelAndView mv) {
		
		mv.setViewName("cs/event");
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
	public ModelAndView qnaMain(ModelAndView mv) {
		
		mv.setViewName("cs/csqnamain");
		return mv;
	}
	
	//3-1. 1:1 문의 작성
	@GetMapping("qna")
	public ModelAndView qnaPage(ModelAndView mv) {
		
		mv.setViewName("cs/csqnainsert");
		return mv;
	}
	
}
