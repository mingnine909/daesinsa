package kh.spring.daesinsa.member.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
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
	@PostMapping("/idCheck")
	@ResponseBody
	public int idCheck(String id) {
		int result = service.idCheck(id);
		return result;
	}
	
	// 회원가입 - 이메일 중복체크	
	@PostMapping("/emailCheck")
	@ResponseBody
	public int emailCheck(String email) throws Exception {
		int result = service.emailCheck(email);
		return result;
	}
	
	@PostMapping("/signup")
	public ModelAndView insertMember(
		ModelAndView mv
		, @Validated Member member
		, Errors errors
		, RedirectAttributes rttr) throws Exception {
		if (errors.hasErrors()) {            
			/* 회원가입 실패시 입력 데이터 값을 유지 */            
			mv.addObject("member", member);
			/* 유효성 통과 못한 필드와 메시지를 핸들링 */
			Map<String, String> validatorResult = service.validateHandling(errors);
			for (String key : validatorResult.keySet()) {
				mv.addObject(key, validatorResult.get(key));            
			}
			/* 회원가입 페이지로 다시 리턴 */
			mv.setViewName("/member/signup");
			return mv;
		}
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
