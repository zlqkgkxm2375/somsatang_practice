package com.jang.pany.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.pany.dao.GtimeDao;
import com.jang.pany.model.Astime;
import com.jang.pany.model.Gtime;
import com.jang.pany.model.SearchVO;
import com.jang.pany.model.Work_Record;
import com.jang.pany.utils.PageHelper;


@Service("GtimeDaoImpl")
public class GtimeServiceImpl implements GtimeService {

	@Autowired
	private GtimeDao gtimeDao;
	
	PageHelper pageHelper = new PageHelper();

	@Override
	public Gtime getGtime(String eid) {
		return gtimeDao.getGtime(eid);
	}
	
	@Override
	public List<Gtime> getGList(String eid){
		return gtimeDao.getGList(eid);
	}

	@Override
	public int insertGtime(String eid, String gu) {
		return gtimeDao.insertGtime(eid, gu);
	}
	
	@Override
	public List<Gtime> getGListForChecking(String eid, String gu) {
		return gtimeDao.getGListForChecking(eid, gu);
	}

	@Override
	public List<Astime> getAGList(SearchVO searchVO) {
		int currentPage = searchVO.getPage();
	    int startRow = (currentPage - 1) * 10 +1 ;  
	    int endRow   = currentPage * 10;  
	    
	    searchVO.setStartRow(startRow);
	    searchVO.setEndRow(endRow);
		
		return gtimeDao.getAGList(searchVO);
	}
	
	@Override
	public List<Astime> getASList(SearchVO searchVO, Astime astime) {
		int currentPage = searchVO.getPage();
	    int startRow = (currentPage - 1) * 10 +1 ; 
	    int endRow   = currentPage * 10; 
	    
	    searchVO.setStartRow(startRow);
	    searchVO.setEndRow(endRow);
		
		return gtimeDao.getASList(searchVO, astime);
	}

	@Override
	public StringBuffer getPageUrl(SearchVO searchVO) {
		int totalRow = gtimeDao.getTotalRow(searchVO);
		return pageHelper.getPageUrl(searchVO, totalRow);
	}

	@Override
	public StringBuffer getPageSUrl(SearchVO searchVO, Astime astime) {
		int totalSRow = gtimeDao.getTotalSRow(searchVO, astime);
		return pageHelper.getPageUrl(searchVO, totalSRow);
	}

	@Override
	public List<Work_Record> getAwork(String title) {
		return gtimeDao.getAwork(title);
	}
}
