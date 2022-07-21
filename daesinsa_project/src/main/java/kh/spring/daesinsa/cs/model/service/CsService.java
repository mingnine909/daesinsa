package kh.spring.daesinsa.cs.model.service;

import java.util.List;

import kh.spring.daesinsa.cs.domain.Coupon;
import kh.spring.daesinsa.cs.domain.CsFaq;
import kh.spring.daesinsa.cs.domain.CsNotice;
import kh.spring.daesinsa.cs.domain.CsQna;

public interface CsService {
	
	//0. 공지사항 전체 개수
	public int noticeTotalCnt();
	
	//1. 공지사항 전체 목록
	public List<CsNotice> noticeList(int currentPage, int pageSize);
	
	//1-2. 공지사항 읽기
	public CsNotice noticeRead(int cs_nno) ;
	
	//2-1. 자주묻는 질문 목록 조회
	public List<CsFaq> faqList();
	
	//2-2. 자주묻는 질문 목록 조회(카테고리별)
	public List<CsFaq> faqListCa(int cs_fcategory);
	
	//3. 상품 QNA 작성
	public int insertQna(CsQna csqna);
	
	//3-2. 상품 QNA 목록 보기
	public List<CsQna> qnaList(CsQna csqna);
	
	//3-3. 사이트 QNA 보기
	public CsQna qnaRead(int cs_qno);
	
	//4-1.쿠폰 다운로드
	public int insertCoupon(Coupon coupon) ;
	
	//4-2. 쿠폰 정보 확인용
	public Coupon selectCoupon(String username);

}
