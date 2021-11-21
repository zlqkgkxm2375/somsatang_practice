package com.jang.pany.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.pany.dao.EmpDao;
import com.jang.pany.model.Emp;

@Service("EmpService")
public class EmpServiceImpl implements EmpService {
	
	@Autowired
	private EmpDao empDao;
	
	//public void setEmpDao(EmpDao EmpDaoImpl) {
	//	this.EmpDao = EmpDaoImpl;
	//}

	@Override
	public Emp getEmp(String empId) {
		return empDao.getEmp(empId);
	}

	@Override
	public int updateEmp(Emp emp) {
		return empDao.updateEmp(emp);
	}

	@Override
	public int insertEmp(Emp emp) {
		return empDao.insertEmp(emp);
	}

	@Override
	public int deleteEmp(String empId) {
		return empDao.deleteEmp(empId);
	}

	@Override
	public Emp efindId(String ename, String eemail) {
		return empDao.efindId(ename, eemail);
	}

	@Override
	public Emp efindPass(String empId, String eemail) {
		return empDao.efindPass(empId, eemail);
	}

	@Override
	public int eupdatePass(Emp emp) {
		return empDao.eupdatePass(emp);
	}

}
