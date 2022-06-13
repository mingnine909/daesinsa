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
	public int insertMember(Member member) {
		return dao.insertMember(member);
	}
	
}
