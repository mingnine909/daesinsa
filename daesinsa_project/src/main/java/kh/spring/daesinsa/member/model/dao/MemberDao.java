package kh.spring.daesinsa.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.daesinsa.member.domain.Member;

@Repository
public class MemberDao {
	
	@Autowired
	private static SqlSession sqlsession;
	
	// 회원가입
	public static int insertMember(Member member) {
		return sqlsession.insert("Member.insertMember", member);
	}
	

	// 로그인	
	public int login(Member member) {
		return sqlsession.selectOne("Member.login", member);
	}

}
