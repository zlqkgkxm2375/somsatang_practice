package com.jang.pany.service;

import java.util.List;

import com.jang.pany.model.Astime;
import com.jang.pany.model.Gtime;
import com.jang.pany.model.SearchVO;
import com.jang.pany.model.Work_Record;

public interface GtimeService {
	
	
	
	List<Gtime> getGList(String eid);
	List<Astime> getAGList(SearchVO searchVO);
	List<Astime> getASList(SearchVO searchVO, Astime astime);
	
	Gtime getGtime(String eid);
	int insertGtime(String eid, String gu);
	List<Gtime> getGListForChecking(String eid, String gu);
	
	
    StringBuffer getPageUrl( SearchVO searchVO);   
    StringBuffer getPageSUrl( SearchVO searchVO, Astime astime);
	List<Work_Record> getAwork(String title);    

}
