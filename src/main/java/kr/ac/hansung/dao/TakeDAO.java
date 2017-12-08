package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Take;

@Repository
public class TakeDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public int getRowCount() { // 레코드 몇 개 있는지?
		String sqlStatement = "select count(*) from takes";				
		return jdbcTemplate.queryForObject(sqlStatement, Integer.class);
	}

	public Take getTake(String course_id) {// 조회하는 메소드
		String sqlStatement = "select * from takes where course_id=?";

		return jdbcTemplate.queryForObject(sqlStatement, new Object[] { course_id }, new RowMapper<Take>() {
			
			public Take mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Take take = new Take();
				
				take.setYear(rs.getInt("year"));
				take.setSemester(rs.getInt("semester"));
				take.setCourse_id(rs.getString("course_id"));
				take.setCourse_name(rs.getString("course_name"));
				take.setDivision(rs.getString("division"));
				take.setCredits(rs.getInt("credits"));

				return take;
			}
		});
	}
	
	public List<Take> getTakes() {// 여러개의 레코드 조회하는 메소드	
		String sqlStatement = "select * from takes";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Take>() {

			public Take mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Take take = new Take();
				
				take.setYear(rs.getInt("year"));
				take.setSemester(rs.getInt("semester"));
				take.setCourse_id(rs.getString("course_id"));
				take.setCourse_name(rs.getString("course_name"));
				take.setDivision(rs.getString("division"));
				take.setCredits(rs.getInt("credits"));

				return take;
			}
		});
	}
	
	public boolean insert(Take take) {

		int year = take.getYear();
		int semester = take.getSemester();
		String course_id = take.getCourse_id();
		String course_name = take.getCourse_name();
		String division = take.getDivision();
		int credits = take.getCredits();

		String sqlStatement = "insert into takes (year, semester, course_id, course_name, division, credits) values (?,?,?,?,?,?)";

		return (jdbcTemplate.update(sqlStatement, new Object[] { year, semester, course_id, course_name, division, credits }) == 1);
	}

	public boolean update(Take take) {

		String course_id = take.getCourse_id();

		int year = take.getYear();
		int semester = take.getSemester();
		String course_name = take.getCourse_name();
		String division = take.getDivision();
		int credits = take.getCredits();

		String sqlStatement = "update takes set year=?, semester=?, course_name=?, division=?, credits=? where course_id=?";

		return (jdbcTemplate.update(sqlStatement, new Object[] { year, semester, course_name, division, credits, course_id }) == 1);
	}

	public boolean delete(String course_id) {

		String sqlStatement = "delete from takes where course_id=?";

		return (jdbcTemplate.update(sqlStatement, new Object[] { course_id }) == 1);
	}
}
