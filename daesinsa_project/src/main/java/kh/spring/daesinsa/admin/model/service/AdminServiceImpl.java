package kh.spring.daesinsa.admin.model.service;

import org.springframework.stereotype.Service;

import kh.spring.daesinsa.admin.model.dao.AdminDao;

@Service
public class AdminServiceImpl implements AdminService{

	private AdminDao dao;

	//임시 코드 넣어둠
	@Override
	public String dashBoard() {
		return null;
	}
	
}
