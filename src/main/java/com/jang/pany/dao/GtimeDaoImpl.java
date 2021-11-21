package com.jang.pany.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.jang.pany.model.Astime;
import com.jang.pany.model.Gtime;
import com.jang.pany.model.SearchVO;
import com.jang.pany.model.Work_Record;

@Repository("GtimeDao")
public class GtimeDaoImpl implements GtimeDao {

	private JdbcTemplate jdbcTemplate;
	private NamedParameterJdbcTemplate jdbcTemplate2;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.jdbcTemplate2 = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public Gtime getGtime(String eid) {
		String sql = "SELECT * FROM datetime WHERE eid= ?";
		RowMapper<Gtime> mapper = new BeanPropertyRowMapper<Gtime>(Gtime.class);
		
		Gtime gtime = (Gtime)this.jdbcTemplate.queryForObject(sql, mapper, eid);

		return gtime;
	}
	
	@Override
	public List<Gtime> getGList(String eid){
		String SQL = "SELECT numb, eid, edate, gu FROM datetime where eid = ? order by numb desc";
		
		RowMapper<Gtime> mapper = new BeanPropertyRowMapper <Gtime>(Gtime.class);

		List<Gtime> list = (List<Gtime>)this.jdbcTemplate.query(SQL, mapper, eid);
		
		return list;
		
	}
	
	@Override
	public List<Gtime> getGListForChecking(String eid, String gu) {
		String SQL = "SELECT numb FROM datetime where eid=? and gu=? and to_char(edate, 'yyyy-mm-dd')=to_char(SYSDATE, 'yyyy-mm-dd') order by numb asc";
		
		RowMapper<Gtime> mapper = new BeanPropertyRowMapper<Gtime>(Gtime.class);

		List<Gtime> list = (List<Gtime>)this.jdbcTemplate.query(SQL, mapper, eid, gu);
		
		return list;
	}


	@Override
	public int insertGtime(String eid, String gu) {
		int maxNo = (int) this.jdbcTemplate.queryForObject("select max(numb)+1 from datetime", Integer.class);
		
		String SQL_INS = "INSERT INTO datetime (numb, eid, gu) VALUES (?, ?, ?)";
		
		return this.jdbcTemplate.update(SQL_INS, maxNo, eid, gu);
	}

	@Override
	public List<Astime> getAGList(SearchVO searchVO) {
		String SQL = "select numb, ename, edate, gu  "
				+ "from (select rownum as rnum, a.* "
				+ "from (SELECT d.numb, e.ename, d.edate, d.gu "
				+ "FROM datetime d, employee e "
				+ " WHERE e.eid = d.eid "
				+ "order by d.numb asc) a ) "
				+ "where rnum between " 
				+ searchVO.getStartRow()
				+" and " 
				+ searchVO.getEndRow();
		
			RowMapper<Astime> mapper = new BeanPropertyRowMapper <Astime>(Astime.class);
			List<Astime> list = (List<Astime>)this.jdbcTemplate.query(SQL, mapper);
		
		return list;
	}
	
	

	@Override
	public int getTotalRow(SearchVO searchVO) {
		String SQL = "select count(*) AS totalrow from datetime" ;
		int gpage = this.jdbcTemplate.queryForObject(SQL, Integer.class);
		System.out.println("gpage = > " + gpage);
		return gpage;
	}
	
	@Override
	public int getTotalSRow(SearchVO searchVO, Astime astime) {
		String SQL = "select count(*) AS totalrow from employee e, datetime d where e.eid = d.eid and e.ename = ?";
		int gpage = this.jdbcTemplate.queryForObject(SQL, Integer.class, astime.getEname());
	
		return gpage;
	}
	
	
	@Override
	public List<Astime> getASList(SearchVO searchVO, Astime astime) {
		String SQL = "select numb, ename, edate, gu "
				+ "from (select rownum as rnum, a.* "
				+ "from (SELECT d.numb, e.ename, d.edate, d.gu "
				+ "FROM datetime d, employee e "
				+ " WHERE e.eid = d.eid "
				+ " AND e.ename = ? "
				+ " ORDER BY d.numb asc) a ) "
				+ "where rnum between "
				+ searchVO.getStartRow()
				+" and " 
				+ searchVO.getEndRow();
		
		System.out.println("searchVo End Row : " + searchVO.getEndRow());
		
			RowMapper<Astime> mapper = new BeanPropertyRowMapper<Astime>(Astime.class);
			System.out.println("mapper : " + mapper);
			String listname = astime.getEname();
			System.out.println(listname);
			List<Astime> list = (List<Astime>)this.jdbcTemplate.query(SQL, mapper, listname);
		
			for(Astime data:list) {
				System.out.println("data : " + data.getEname());
			}
		return list;
	}

	@Override
	public List<Work_Record> getAwork(String title) {
		String SQL = "SELECT schedule_code, title, start_date, end_date, allday FROM table_schedule where title = ? ";
		RowMapper<Work_Record> mapper = new BeanPropertyRowMapper <Work_Record>(Work_Record.class);
		List<Work_Record> list = (List<Work_Record>)this.jdbcTemplate.query(SQL, mapper, title);
		
		return list;
	}
	
	
	
}
