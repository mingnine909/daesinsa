package kh.spring.daesinsa.cs.model.service;

import java.util.List;

import kh.spring.daesinsa.cs.domain.CsNotice;

public interface CsService {
	
	//0. 공지사항 전체 개수
	public int noticeTotalCnt();
	
	//1. 공지사항 전체 목록
	public List<CsNotice> noticeList(int currentPage, int pageSize);

}
