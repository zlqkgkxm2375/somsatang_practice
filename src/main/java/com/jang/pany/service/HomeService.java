package com.jang.pany.service;

import java.util.List;

import com.jang.pany.model.Home;

public interface HomeService {

	Home getHome(String eid);
	int insertEhome(String eid);
	List<Home> getHList(Home home);

}
