package kh.spring.daesinsa.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.daesinsa.member.domain.Member;
import kh.spring.daesinsa.member.model.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao dao;

	@Override
 	public int insertMember(Member member) throws Exception{
		return dao.insertMember(member);
	}

	@Override
	public int login(Member member) throws Exception {
		return dao.login(member);
	}
	
}
