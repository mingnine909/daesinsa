package kh.spring.daesinsa.member.model.service;

import java.util.Map;

import org.springframework.validation.Errors;

import kh.spring.daesinsa.member.domain.Member;

public interface MemberService {

	public int insertMember(Member member) throws Exception;

	public int login(Member member) throws Exception;

	public int idCheck(String id);

	public int emailCheck(String email) throws Exception;

	/* 회원가입 시, 유효성 및 중복 검사 */ 
	public Map<String, String> validateHandling(Errors errors);
}
