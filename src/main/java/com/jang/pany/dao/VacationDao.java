package com.jang.pany.dao;

import java.util.List;

import com.jang.pany.model.Vacation;

public interface VacationDao {

	int insertEvacation(String eid);

	List<Vacation> getVList(Vacation vacation);

	Vacation getVacation(String eid);

	List<Vacation> getavView(Vacation vacation);

}
