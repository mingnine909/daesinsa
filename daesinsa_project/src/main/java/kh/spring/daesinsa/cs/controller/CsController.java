package kh.spring.daesinsa.cs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.daesinsa.cs.model.service.CsServiceImpl;

@Controller
@RequestMapping("/cs")
public class CsController {
	
	@Autowired
	private CsServiceImpl service;
	
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

}
