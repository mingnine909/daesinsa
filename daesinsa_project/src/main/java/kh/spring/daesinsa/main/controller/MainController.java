package kh.spring.daesinsa.main.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController {

	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
//	메인페이지 
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date(); 
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
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
