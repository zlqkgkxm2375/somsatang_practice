package com.jang.pany.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.pany.dao.CalenDao;
import com.jang.pany.model.Calendar;

@Service("calenService")
public class CalenServiceImpl implements CalenService {
	
	@Autowired
	private CalenDao calenDao;
	@Override
	public Calendar getCalen(String aid) {
		return calenDao.getCalen(aid);
	}

	@Override
	public int updateCalen(Calendar calen) {
		return calenDao.updateCalen(calen);
	}

	@Override
	public int insertCalen(Calendar calen) {
		return calenDao.insertCalen(calen);
	}

	@Override
	public List<Calendar> getCalen(Calendar calen) {
		return calenDao.getCalen(calen);
	}

	@Override
	public int deleteCalen(int dno) {
		return calenDao.deleteCalen(dno);
	}

}
