package kh.spring.daesinsa.cs.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.daesinsa.cs.domain.Coupon;
import kh.spring.daesinsa.cs.domain.CsFaq;
import kh.spring.daesinsa.cs.domain.CsNotice;
import kh.spring.daesinsa.cs.domain.CsQna;
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
	
	//3-1.사이트 QNA작성
	@Override
	public int insertQna(CsQna csqna) {
		return dao.insertQna(csqna);
	}
	
	//3-2.사이트 QNA 목록
	@Override
	public List<CsQna> qnaList(CsQna csqna) {
		return dao.qnaList(csqna);
	}
	
	//3-3.사이트 QNA 읽기
	@Override
	public CsQna qnaRead(int cs_qno) {
		return dao.qnaRead(cs_qno);
	}
	
	
	//4-1.쿠폰 다운로드
	@Override
	public int insertCoupon(Coupon coupon) {
		return dao.insertCoupon(coupon);
	}
	
	//4-2.쿠폰 정보 확인
	@Override
	public Coupon selectCoupon(String username) {
		return dao.selectCoupon(username);
	}
	

	

}
