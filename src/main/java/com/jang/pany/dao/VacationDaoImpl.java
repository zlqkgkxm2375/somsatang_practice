package com.jang.pany.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.jang.pany.model.Vacation;

@Repository("VacationDao")
public class VacationDaoImpl implements VacationDao {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	

	@Override
	public int insertEvacation(String eid) {
		int maxNo = (int) this.jdbcTemplate.queryForObject("select max(numv)+1 from vacationtime", Integer.class);
		String SQL_INS = "INSERT INTO vacationtime (numv, eid) VALUES (?, ?)";
		return this.jdbcTemplate.update(SQL_INS, maxNo, eid);
	}

	@Override
	public List<Vacation> getVList(Vacation vacation) {
		String SQL = "select e.ename, v.vdate "
				+ "from employee e, vacationtime v "
				+ "where e.eid = v.eid "
				+ "order by vdate desc ";
		
		RowMapper<Vacation> mapper = new BeanPropertyRowMapper <Vacation>(Vacation.class);
		List<Vacation> list = (List<Vacation>)this.jdbcTemplate.query(SQL, mapper);
		
		return list;
	}

	@Override
	public Vacation getVacation(String eid) {
		String sql = "SELECT * FROM vacationtime WHERE eid= ?";
		RowMapper<Vacation> mapper = new BeanPropertyRowMapper<Vacation>(Vacation.class);
		Vacation vtime = (Vacation)this.jdbcTemplate.queryForObject(sql, mapper, eid);

		return vtime;
	}

	@Override
	public List<Vacation> getavView(Vacation vacation) {
		String SQL = "select e.ename, v.vdate "
				+ "from employee e, vacationtime v "
				+ "where e.eid = v.eid "
				+ "order by hdate desc ";
		
		RowMapper<Vacation> mapper = new BeanPropertyRowMapper <Vacation>(Vacation.class);
		List<Vacation> list = (List<Vacation>)this.jdbcTemplate.query(SQL, mapper);
		
		return list;
	}

}
