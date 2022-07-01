package kh.spring.daesinsa.mypage.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.daesinsa.mypage.domain.Mypage;

@Repository
public class MypageDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	public int myOrder(Mypage mypage) {
		return 0;
		
	}

}
