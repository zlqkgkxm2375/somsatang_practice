package com.jang.pany.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import com.jang.pany.model.Admin;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {
	
	private JdbcTemplate jdbcTemplate;
	private NamedParameterJdbcTemplate jdbcTemplate2;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.jdbcTemplate2 = new NamedParameterJdbcTemplate(dataSource);
	}
	

	@Override
	public Admin getAdmin(String adminId) {
		String sql = "SELECT * FROM ADMIN WHERE aid = ?";
		RowMapper<Admin> mapper = new BeanPropertyRowMapper<Admin>(Admin.class);
		Admin admin = (Admin)this.jdbcTemplate.queryForObject(sql, mapper, adminId);
		
		return admin;
	}

	@Override
	public int updateAdmin(Admin admin) {
		String SQL_UP = "UPDATE ADMIN SET apwd=:apwd, aphone=:aphone, aemail=:aemail WHERE aid = :aid";
		
		SqlParameterSource parameterSource = new BeanPropertySqlParameterSource(admin);
		
		return this.jdbcTemplate2.update(SQL_UP, parameterSource);
	}

	@Override
	public int insertAdmin(Admin admin) {
		System.out.println("AdminDaoImpl => " + admin.getAname());
		int MaxNo = (int) this.jdbcTemplate.queryForObject("select max(acode)+1 from admin", Integer.class);
		admin.setAcode(MaxNo);
		String SQL_INS = "INSERT INTO ADMIN (acode, aid, apwd, aname, aphone, aemail)" + " VALUES (:acode, :aid, :apwd, :aname, :aphone, :aemail)";
		SqlParameterSource parameterSource = new BeanPropertySqlParameterSource(admin);
		
		return this.jdbcTemplate2.update(SQL_INS, parameterSource);
	}

	@Override
	public int deleteAdmin(String adminId) {
		String SQL_DEL = "DELETE FROM ADMIN WHERE aid = ? ";
		
		return this.jdbcTemplate.update(SQL_DEL, adminId);
	}


	@Override
	public Admin afindId(String aname, String aemail) {
		String SQL = "select * from ADMIN where aname=? and aemail=?";
		RowMapper<Admin> mapper = new BeanPropertyRowMapper<Admin>(Admin.class);
		Admin admin = this.jdbcTemplate.queryForObject(SQL, mapper, aname, aemail);
		
		return admin;
	}


	@Override
	public Admin afindPass(String adminId, String aemail) {
		String SQL = "SELECT * FROM ADMIN WHERE AID = ? AND AEMAIL = ?";
		RowMapper<Admin> mapper = new BeanPropertyRowMapper<Admin>(Admin.class);
		return this.jdbcTemplate.queryForObject(SQL, mapper, adminId, aemail);
	}


	@Override
	public int aupdatePass(Admin admin) {
		String SQL = "UPDATE ADMIN SET apwd=:apwd WHERE aid = :aid";
		
		SqlParameterSource parameterSource = new BeanPropertySqlParameterSource(admin);
		return this.jdbcTemplate2.update(SQL, parameterSource);
		
	}

}
