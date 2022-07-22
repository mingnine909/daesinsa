package kh.spring.daesinsa.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.spring.daesinsa.mypage.model.service.MypageService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	private MypageService service;
	
	@GetMapping ("/order")
	public String myOrder() {
		return "mypage/order";
	}
	
	@GetMapping ("/exchange")
	public String myExchange() {
		return "mypage/exchange";
	}
	
	@GetMapping ("/rental")
	public String myRental() {
		return "mypage/rental";
	}
	
	@GetMapping ("/rentalre")
	public String myRentalRe() {
		return "mypage/rentalre";
	}
	
	@GetMapping ("/infoupdate")
	public String myInfoUpdate() {
		return "mypage/infoupdate";
	}
	
	@GetMapping ("/infodelete")
	public String myInfoDelete() {
		return "mypage/infodelete";
	}
}
