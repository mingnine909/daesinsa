package kh.spring.daesinsa.cs.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.daesinsa.cs.domain.CsNotice;

@Repository
public class CsDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	//0. 공지사항 전체 개수
	public int noticeTotalCnt() {
		return sqlsession.selectOne("CsTotal.noticeTotalCnt");
	}
	
	//1.공지사항 전체 목록 
	public List<CsNotice> noticeList(int currentPage, int pageSize){
		return sqlsession.selectList("CsTotal.noticeList",null, 
				new RowBounds((currentPage-1)*pageSize,pageSize));
	}
}
