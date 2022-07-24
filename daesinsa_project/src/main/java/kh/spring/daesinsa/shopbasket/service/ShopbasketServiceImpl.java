package kh.spring.daesinsa.shopbasket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.daesinsa.shopbasket.dao.ShopbasketDao;
import kh.spring.daesinsa.shopbasket.domain.Shopbasket;


@Service
public class ShopbasketServiceImpl implements ShopbasketService {

	@Autowired
	private ShopbasketDao dao;

	
	//��ٱ��� ���
	@Override
	public List<Shopbasket> getShopbasketList(String m_id) {		
		return dao.getShopbasket(m_id);
	}

	//��ٱ��� ����
	@Override
	public int modifyCount(int sb_amount) {
		return dao.modifyCount(sb_amount);
	}
	
	//��ٱ��� ����
	@Override
	public int deleteShopbasket(int p_id) {
		return dao.deleteShopbasket(p_id);
	}

	
}
