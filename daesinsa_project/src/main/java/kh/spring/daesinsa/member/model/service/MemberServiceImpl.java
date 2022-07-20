package kh.spring.daesinsa.member.model.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;

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

	/* 회원가입 시, 유효성 및 중복 검사 */
	@Override
	public Map<String, String> validateHandling(Errors errors) {
		Map<String, String> validatorResult = new HashMap<>();
		/* 유효성 및 중복 검사에 실패한 필드 목록을 받음 */
		for (FieldError error : errors.getFieldErrors()) {
			String validKeyName = String.format("valid_%s", error.getField());
			validatorResult.put(validKeyName, error.getDefaultMessage());
		}
		return validatorResult;
	}

}
