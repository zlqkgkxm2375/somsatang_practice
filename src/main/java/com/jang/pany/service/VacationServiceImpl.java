package com.jang.pany.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.pany.dao.VacationDao;
import com.jang.pany.model.Vacation;

@Service("VacationDaoImpl")
public class VacationServiceImpl implements VacationService {

	@Autowired
	private VacationDao vacationDao;
	
	@Override
	public Vacation getVacation(String eid) {
		return vacationDao.getVacation(eid);
	}

	@Override
	public int insertEvacation(String eid) {
		return vacationDao.insertEvacation(eid);
	}

	@Override
	public List<Vacation> getVList(Vacation vacation) {
		return vacationDao.getVList(vacation);
	}

}
