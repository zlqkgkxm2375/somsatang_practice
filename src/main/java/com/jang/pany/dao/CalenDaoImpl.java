package com.jang.pany.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import com.jang.pany.model.Calendar;

@Repository("calenDao")
public class CalenDaoImpl implements CalenDao {
	private JdbcTemplate jdbcTemplate;
	private NamedParameterJdbcTemplate jdbcTemplate2;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.jdbcTemplate2 = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public Calendar getCalen(String aid) {
		String sql = "SELECT * FROM SCHEDULE_TABLE WHERE ID = ?";
		RowMapper<Calendar> mapper = new BeanPropertyRowMapper<Calendar>(Calendar.class);
		Calendar calen = (Calendar)this.jdbcTemplate.queryForObject(sql, mapper, aid);
		
		return calen;
	}

	@Override
	public int updateCalen(Calendar calen) {
		String SQL_UP = "UPDATE SCHEDULE_TABLE SET title=:tite, description=:description, start_date=:TO_timestamp(:start_date,'YYYY-MM-DD HH24:MI:SS'), end_date=:TO_timestamp(:end_date,'YYYY-MM-DD HH24:MI:SS')"
				+ " type = :type, color=:color, allday=:allday"
				+ "  WHERE dno = :dno";
		
		SqlParameterSource parameterSource = new BeanPropertySqlParameterSource(calen);
		
		return this.jdbcTemplate2.update(SQL_UP, parameterSource);
	}

	@Override
	public int insertCalen(Calendar calen) {
		int MaxNo = (int) this.jdbcTemplate.queryForObject("select max(dno)+1 from SCHEDULE_TABLE", Integer.class);
		calen.setDno(MaxNo);
		String SQL_INS = "INSERT INTO SCHEDULE_TABLE (dno, title, description, start_date, end_date, type, color, allday)" + " VALUES (:dno, :title, :description, :start_date, :end_date, :type, :color, :allday)";
		SqlParameterSource parameterSource = new BeanPropertySqlParameterSource(calen);
		
		return this.jdbcTemplate2.update(SQL_INS, parameterSource);
	}

	@Override
	public int deleteCalen(int dno) {
		String SQL_DEL = "DELETE FROM SCHEDULE_TABLE WHERE dno = ? ";
		return this.jdbcTemplate.update(SQL_DEL, dno);
	}

	@Override
	public List<Calendar> getCalen(Calendar calen) {
		String SQL = "select dno, title, description, start_date, end_date, type, c, allday " 
				 + "from schedule_table";
		
		RowMapper<Calendar> mapper = new BeanPropertyRowMapper <Calendar>(Calendar.class);
		List<Calendar> list = (List<Calendar>)this.jdbcTemplate.query(SQL, mapper);
		return list;
	}
}
