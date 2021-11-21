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

import com.jang.pany.model.Emp;

@Repository("empDao")
public class EmpDaoImpl implements EmpDao {
	
	private JdbcTemplate jdbcTemplate;
	private NamedParameterJdbcTemplate jdbcTemplate2;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.jdbcTemplate2 = new NamedParameterJdbcTemplate(dataSource);
	}
	

	@Override
	public Emp getEmp(String empId) {
		System.out.println("EmpDaoImpl id => " + empId);
		String sql = "SELECT * FROM EMPLOYEE WHERE eid = ?";
		RowMapper<Emp> mapper = new BeanPropertyRowMapper<Emp>(Emp.class);
		Emp emp = (Emp)this.jdbcTemplate.queryForObject(sql, mapper, empId);
		
		return emp;
	}

	@Override
	public int updateEmp(Emp emp) {
		String SQL_UP = "UPDATE EMPLOYEE SET epwd=:epwd, ephone=:ephone, eemail=:eemail WHERE eid = :eid";
		
		SqlParameterSource parameterSource = new BeanPropertySqlParameterSource(emp);
		
		return this.jdbcTemplate2.update(SQL_UP, parameterSource);
	}

	@Override
	public int insertEmp(Emp emp) {
		System.out.println("EmpDaoImpl => " + emp.getEname());
		int MaxNo = (int) this.jdbcTemplate.queryForObject("select max(ecode)+1 from EMPLOYEE", Integer.class);
		emp.setEcode(MaxNo);
		String SQL_INS = "INSERT INTO EMPLOYEE (ecode, eid, epwd, ename, ephone, eemail)" + " VALUES (:ecode, :eid, :epwd, :ename, :ephone, :eemail)";
		SqlParameterSource parameterSource = new BeanPropertySqlParameterSource(emp);
		
		return this.jdbcTemplate2.update(SQL_INS, parameterSource);
	}

	@Override
	public int deleteEmp(String empId) {
		String SQL_DEL = "DELETE FROM EMPLOYEE WHERE eid = ? ";
		
		return this.jdbcTemplate.update(SQL_DEL, empId);
	}


	@Override
	public Emp efindId(String ename, String eemail) {
		String SQL = "select * from EMPLOYEE where ename=? and eemail=?";
		RowMapper<Emp> mapper = new BeanPropertyRowMapper<Emp>(Emp.class);
		Emp emp = this.jdbcTemplate.queryForObject(SQL, mapper, ename, eemail);
		
		return emp;
	}


	@Override
	public Emp efindPass(String empId, String eemail) {
		String SQL = "SELECT * FROM EMPLOYEE WHERE EID = ? AND EEMAIL = ?";
		RowMapper<Emp> mapper = new BeanPropertyRowMapper<Emp>(Emp.class);
		return this.jdbcTemplate.queryForObject(SQL, mapper, empId, eemail);
	}


	@Override
	public int eupdatePass(Emp emp) {
		String SQL = "UPDATE EMPLOYEE SET epwd=:epwd WHERE eid = :eid";
		
		SqlParameterSource parameterSource = new BeanPropertySqlParameterSource(emp);
		return this.jdbcTemplate2.update(SQL, parameterSource);
		
	}

}
