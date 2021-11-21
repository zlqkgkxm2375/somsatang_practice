package com.jang.pany.dao;

import java.util.List;

import com.jang.pany.model.Calendar;

public interface CalenDao {
	Calendar getCalen(String aid);
	
	int updateCalen(Calendar calen);
	int insertCalen(Calendar calen);
	int deleteCalen(int dno);
	
	List<Calendar> getCalen(Calendar calen);
}
