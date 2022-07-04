package kh.spring.daesinsa.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kh.spring.daesinsa.member.domain.Member;
import kh.spring.daesinsa.member.model.service.MemberServiceImpl;

@Controller
@RequestMapping("/member")
public class MemberController {	
	
	@Autowired
	private MemberServiceImpl service;
	
	@GetMapping("/signup")
	public String insertMember() {
		return "member/signup";
	}
	
	@PostMapping("/signup")
	public ModelAndView insertMember(
		ModelAndView mv
		, Member member	
		, RedirectAttributes rttr) {
		
		int result = service.insertMember(member);
		if(result ==0) {
		rttr.addFlashAttribute("msg", "회원가입 실패");
		mv.setViewName("redirect:/member/siginup");	
		return mv;
		}else {
		mv.setViewName("redirect:/main");	
		return mv;
		}

	}
	
	@GetMapping("/findid") 
	public String findId() {
		return "member/findid";
	}

	@GetMapping("/findpwd") 
	public String findPwd() {
		return "member/findpwd";
	}
	
	@GetMapping("/login") 
	public String login() {
		return "member/login";
	}
}
