package kh.spring.daesinsa.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kh.spring.daesinsa.member.domain.Member;
import kh.spring.daesinsa.member.model.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {	
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/signup")
	public ModelAndView pageinsertMember(ModelAndView mv) {
		mv.setViewName("/member/signup");
		return mv;
	}
	
	// 회원가입 - 아이디 중복체크	
	@ResponseBody
	@PostMapping("/idcheck")
	public int idCheck(Member member) throws Exception {
		int result = service.idCheck(member);
		return result;
	}
	
	// 회원가입 - 이메일 중복체크	
	@ResponseBody
	@PostMapping("/emailcheck")
	public int emailCheck(Member member) throws Exception {
		int result = service.emailCheck(member);
		return result;
	}
	
	@PostMapping("/signup")
	public ModelAndView insertMember(
		ModelAndView mv
		, @Validated Member member	
		, RedirectAttributes rttr) throws Exception {
		
		int result = service.insertMember(member);
		
		try {
			// 중복인 경우
			if(result ==1) {
				rttr.addFlashAttribute("msg", "회원가입 실패");
				mv.setViewName("redirect:/member/siginup");	
				return mv;
		} else if(result==0){
			rttr.addFlashAttribute("msg", "회원가입에 성공했습니다. 환영합니다.");
			mv.setViewName("redirect:/");	
			return mv;
		}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return mv;
	}
	
	@GetMapping("/login")
	public void loginPage(String error, String logout, Model model) {
		if(error != null) { 
			model.addAttribute("error","로그인 실패"); 
		} 
		if(logout != null) { 
			model.addAttribute("logout","로그아웃"); 
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
	

}
