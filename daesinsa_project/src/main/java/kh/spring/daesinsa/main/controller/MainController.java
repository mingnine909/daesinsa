package kh.spring.daesinsa.main.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.daesinsa.shopping.domain.Shopping;
import kh.spring.daesinsa.shopping.model.service.ShoppingServiceImpl;


@Controller
public class MainController {

	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private ShoppingServiceImpl service;
	
//	메인페이지 
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Shopping shopping
			,ModelAndView mv) {
		
		mv.addObject("Shopping", service.selectListAll());	
		
		return "main";
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
