package kh.spring.daesinsa.cs.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.daesinsa.cs.domain.CsFaq;
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
	
	//1-2. 공지사항 읽기
	public CsNotice noticeRead(int cs_nno) {
		return sqlsession.selectOne("CsTotal.noticeRead",cs_nno);
	}
	
	//2-1. 자주묻는 질문 목록 조회
	public List<CsFaq> faqList(){
		return sqlsession.selectList("CsTotal.faqList");
	}
	
	//2-2. 자주묻는 질문 목록 조회(카테고리별)
	public List<CsFaq> faqListCa(int cs_fcategory){
		return sqlsession.selectList("CsTotal.faqListCa",cs_fcategory);
	}
	
	
}
