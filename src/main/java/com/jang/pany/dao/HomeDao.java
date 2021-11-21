package com.jang.pany.dao;

import java.util.List;

import com.jang.pany.model.Home;

public interface HomeDao {

	int insertEhome(String eid);

	List<Home> getHList(Home home);

	Home getHome(String eid);

	List<Home> getahView(Home home);

}
