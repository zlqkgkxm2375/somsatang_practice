package com.jang.pany.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.jang.pany.model.Home;

@Repository("HomeDao")
public class HomeDaoImpl implements HomeDao {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public int insertEhome(String eid) {
		int maxNo = (int) this.jdbcTemplate.queryForObject("select max(numh)+1 from hometime", Integer.class);
		String SQL_INS = "INSERT INTO hometime (numh, eid) VALUES (?, ?)";
		return this.jdbcTemplate.update(SQL_INS, maxNo, eid);
	}

	@Override
	public List<Home> getHList(Home home) {
		String SQL = "select e.ename, h.hdate "
				+ "from employee e, hometime h "
				+ "where e.eid = h.eid "
				+ "order by hdate desc ";
		
		RowMapper<Home> mapper = new BeanPropertyRowMapper <Home>(Home.class);
		List<Home> list = (List<Home>)this.jdbcTemplate.query(SQL, mapper);
		
		return list;
	}

	@Override
	public Home getHome(String eid) {
		String sql = "SELECT * FROM hometime WHERE eid= ?";
		RowMapper<Home> mapper = new BeanPropertyRowMapper<Home>(Home.class);
		Home htime = (Home)this.jdbcTemplate.queryForObject(sql, mapper, eid);

		return htime;
	}

	@Override
	public List<Home> getahView(Home home) {
		String SQL = "select e.ename, h.hdate "
				+ "from employee e, hometime h "
				+ "where e.eid = h.eid "
				+ "order by hdate desc ";
		
		RowMapper<Home> mapper = new BeanPropertyRowMapper <Home>(Home.class);
		List<Home> list = (List<Home>)this.jdbcTemplate.query(SQL, mapper);
		
		return list;
	}
}
