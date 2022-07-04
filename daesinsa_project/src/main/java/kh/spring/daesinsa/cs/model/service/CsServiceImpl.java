package kh.spring.daesinsa.cs.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	

}
