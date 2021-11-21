package com.jang.pany.service;

import java.util.List;

import com.jang.pany.model.Vacation;

public interface VacationService {

	Vacation getVacation(String eid);
	int insertEvacation(String eid);
	List<Vacation> getVList(Vacation vacation);
	

}
