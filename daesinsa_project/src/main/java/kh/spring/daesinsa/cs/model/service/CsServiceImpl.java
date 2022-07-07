package kh.spring.daesinsa.cs.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.daesinsa.cs.domain.CsFaq;
import kh.spring.daesinsa.cs.domain.CsNotice;
import kh.spring.daesinsa.cs.model.dao.CsDao;

@Service
public class CsServiceImpl implements CsService{

	@Autowired 
	private CsDao dao;
	
	//0.공지사항 전체 개수
	@Override
	public int noticeTotalCnt() {
		return dao.noticeTotalCnt();
	}
	//1. 공지사항 전체 목록 
	@Override
	public List<CsNotice> noticeList(int currentPage, int pageSize) {
		return dao.noticeList(currentPage, pageSize);
	}
	//1-2. 공지사항 읽기
	@Override
	public CsNotice noticeRead(int cs_nno) {
		return dao.noticeRead(cs_nno);
	}
	
	//2-1. 자주묻는 질문 목록 조회
	@Override
	public List<CsFaq> faqList() {
		return dao.faqList();
	}
	//2-2. 자주묻는 질문 목록 조회(카테고리별)
	@Override
	public List<CsFaq> faqListCa(int cs_fcategory) {
		return dao.faqListCa(cs_fcategory);
	}
	

}