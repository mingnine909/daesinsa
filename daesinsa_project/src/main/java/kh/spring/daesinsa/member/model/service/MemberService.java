package kh.spring.daesinsa.member.model.service;

import kh.spring.daesinsa.member.domain.Member;

public interface MemberService {

	public int insertMember(Member member) throws Exception;
	
	public int login(Member member) throws Exception;

}
