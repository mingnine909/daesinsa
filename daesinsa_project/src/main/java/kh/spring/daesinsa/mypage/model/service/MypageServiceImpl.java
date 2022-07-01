package kh.spring.daesinsa.mypage.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.daesinsa.mypage.domain.Mypage;
import kh.spring.daesinsa.mypage.model.dao.MypageDao;

@Service
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	public MypageDao dao;
	
	@Override
	public int myOrder(Mypage mypage) {
		return 0;
	}

}
