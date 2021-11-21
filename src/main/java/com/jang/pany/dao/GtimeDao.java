package com.jang.pany.dao;

import java.util.List;

import com.jang.pany.model.Astime;
import com.jang.pany.model.Gtime;
import com.jang.pany.model.SearchVO;
import com.jang.pany.model.Work_Record;


public interface GtimeDao {
	
	List<Gtime> getGList(String eid);
	List<Astime> getAGList(SearchVO searchVO);
	List<Astime> getASList(SearchVO searchVO, Astime astime);
	
	
	Gtime getGtime(String eid);
	List<Gtime> getGListForChecking(String eid, String gu);
	
	int insertGtime(String eid, String gu);
	int getTotalRow(SearchVO searchVO); 
	int getTotalSRow(SearchVO searchVO, Astime astime);
	List<Work_Record> getAwork(String title); 
}
