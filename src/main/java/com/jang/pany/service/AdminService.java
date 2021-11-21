package com.jang.pany.service;

import com.jang.pany.model.Admin;

public interface AdminService {
	
	Admin getAdmin(String adminId);
	
	int updateAdmin(Admin admin);
	int insertAdmin(Admin admin);
	int deleteAdmin(String adminId);
	
	Admin afindId(String aname, String aemail);
	Admin afindPass(String adminId, String aemail);
	int aupdatePass(Admin admin);
}
