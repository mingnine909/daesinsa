package kh.spring.daesinsa.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.daesinsa.shopping.domain.Shopping;
import kh.spring.daesinsa.shopping.model.service.ShoppingServiceImpl;


@Controller
public class MainController {


	@Autowired
	private ShoppingServiceImpl service;
	
//	메인페이지 
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Shopping shopping
			,ModelAndView mv) {
		
		//주석처리
		mv.addObject("main", service.selectNewProductList());	
		mv.setViewName("main");
		return mv;
	}
	
	
//	@ExceptionHandler(NullPointerException.class)
//	private ModelAndView handlerMemberException(NullPointerException e) {
//		logger.error(e.getMessage());
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("redirect:/");
//		return mv;		
//	}
	
//	@ExceptionHandler(NumberFormatException.class)
//	private ModelAndView handlerMemberException(NumberFormatException e) {
//		logger.error(e.getMessage());
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("redirect:/");
//		return mv;		
//	}	
//	@ExceptionHandler(SQLException.class)
//	private ModelAndView handlerMemberException(SQLException e) {
//		logger.error(e.getMessage());
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("redirect:/");
//		return mv;		
//	}
	
	
//	@ExceptionHandler
//	@ExceptionHandler(Exception.class)
//	private ModelAndView handlerMemberException(Exception e) {
//		logger.error(e.getMessage());
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("errMsg", e.getMessage());
//		mv.setViewName("error/errException");
//		return mv;		
//	}
	
	
}
