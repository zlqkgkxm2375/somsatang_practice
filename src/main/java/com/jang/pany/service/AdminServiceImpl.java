package com.jang.pany.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.pany.dao.AdminDao;
import com.jang.pany.model.Admin;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDao adminDao;
	
	//public void setAdminDao(AdminDao adminDaoImpl) {
	//	this.adminDao = adminDaoImpl;
	//}

	@Override
	public Admin getAdmin(String adminId) {
		return adminDao.getAdmin(adminId);
	}

	@Override
	public int updateAdmin(Admin admin) {
		return adminDao.updateAdmin(admin);
	}

	@Override
	public int insertAdmin(Admin admin) {
		return adminDao.insertAdmin(admin);
	}

	@Override
	public int deleteAdmin(String adminId) {
		return adminDao.deleteAdmin(adminId);
	}

	@Override
	public Admin afindId(String aname, String aemail) {
		return adminDao.afindId(aname, aemail);
	}

	@Override
	public Admin afindPass(String adminId, String aemail) {
		return adminDao.afindPass(adminId, aemail);
	}

	@Override
	public int aupdatePass(Admin admin) {
		return adminDao.aupdatePass(admin);
	}

}
