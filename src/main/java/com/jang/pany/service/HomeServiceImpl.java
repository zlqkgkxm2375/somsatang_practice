package com.jang.pany.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.pany.dao.HomeDao;
import com.jang.pany.model.Home;

@Service("HomeDaoImpl")
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HomeDao homeDao;
	
	@Override
	public int insertEhome(String eid) {
		return homeDao.insertEhome(eid);
	}

	@Override
	public List<Home> getHList(Home home) {
		return homeDao.getHList(home);
	}

	@Override
	public Home getHome(String eid) {
		return homeDao.getHome(eid);
	}

}
