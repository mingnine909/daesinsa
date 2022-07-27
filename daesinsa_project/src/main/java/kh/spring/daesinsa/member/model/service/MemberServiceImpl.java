package kh.spring.daesinsa.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import kh.spring.daesinsa.member.domain.Member;
import kh.spring.daesinsa.member.model.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao dao;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	@Override
	public int insertMember(Member member) throws Exception {
		System.out.println("Befor Encoder : " + member.getPassword());
		System.out.println("Befor Encoder : " + member.getPassword());
		String endcodedPassword = bcryptPasswordEncoder.encode(member.getPassword());
		System.out.println("After Encoder : " + endcodedPassword);
		System.out.println("Resister User Info : " + member);

		member.setPassword(endcodedPassword);

		return dao.insertMember(member);
	}

	@Override
	public int login(Member member) throws Exception {
		return dao.login(member);
	}

	@Override
	public int idCheck(String id) {
		return dao.idCheck(id);
	}

	@Override
	public int emailCheck(String email) {
		return dao.emailCheck(email);
	}

}
