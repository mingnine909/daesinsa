package kh.spring.daesinsa.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.daesinsa.member.domain.Member;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	//1. 회원가입
	
	public int insertMember(Member member) {
		return sqlsession.insert("Member.insertMember",member);
	}

}
