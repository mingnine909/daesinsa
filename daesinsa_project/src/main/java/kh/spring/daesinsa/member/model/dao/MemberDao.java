package kh.spring.daesinsa.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.daesinsa.member.domain.Member;
import kh.spring.daesinsa.member.security.CustomUserDetails;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	// 회원가입
	public int insertMember(Member member) {
		return sqlsession.insert("Member.insertMember", member);
	}
	

	//회원가입 - 아이디 중복 체크
	public int idCheck(String id) {
		return sqlsession.selectOne("Member.idCheck", id);
	}
	
	//회원가입 - 이메일 중복 체크
	public int emailCheck(String email) {
		return sqlsession.selectOne("Member.emailCheck", email);
	}
	
	
	// 로그인	
	public int login(Member member) {
		return sqlsession.selectOne("Member.login", member);
	}


	// Spring Security 로그인 정보 들고오기
	public CustomUserDetails getUserById(String id) {
		CustomUserDetails users = sqlsession.selectOne("getUserById", id);
		return users;
	}

}
