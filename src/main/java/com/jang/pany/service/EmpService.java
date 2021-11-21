package com.jang.pany.service;

import com.jang.pany.model.Emp;

public interface EmpService {
	
	Emp getEmp(String empId);
	
	int updateEmp(Emp emp);
	int insertEmp(Emp emp);
	int deleteEmp(String empId);
	
	Emp efindId(String ename, String eemail);
	Emp efindPass(String empId, String eemail);
	int eupdatePass(Emp emp);
}
