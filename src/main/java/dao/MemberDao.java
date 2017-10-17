package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

public class MemberDao {

	private JdbcTemplate jdbcTemplate;
	private RowMapper<Member> memRowMapper = new RowMapper<Member>() {
		public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
			Member member = new Member(rs.getString("EMAIL"), rs.getString("PASSWORD"), rs.getString("NAME"),
					rs.getTimestamp("REGDATE"));
			member.setId(rs.getLong("ID"));
			return member;
		}
	};

	public MemberDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public Member selectByEmail(String email) {

		List<Member> results = jdbcTemplate.query("select * from member where email = ? ", new RowMapper<Member>() {
			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
				Member member = new Member(rs.getString("EMAIL"), rs.getString("PASSWORD"), rs.getString("NAME"),
						rs.getTimestamp("REGDATE"));
				member.setId(rs.getLong("ID"));
				return member;
			}
		}, email);

		return results.isEmpty() ? null : results.get(0);
	}

	public void insert(final Member member) {
		jdbcTemplate.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement(
						"insert into MEMBER (id, EMAIL, PASSWORD, NAME, REGDATE) " + "values (id.nextval, ?, ?, ?, sysdate)",
						new String[] { "ID" });
				pstmt.setString(1, member.getEmail());
				pstmt.setString(2, member.getPassword());
				pstmt.setString(3, member.getName());
				return pstmt;
			}
		});
		/*Number keyValue = keyHolder.getKey();
		member.setId(keyValue.longValue());*/
	}

	public void update(Member member) {
		jdbcTemplate.update("update MEMBER set NAME = ?, PASSWORD = ? where EMAIL = ?", member.getName(),
				member.getPassword(), member.getEmail());
	}

	public List<Member> selectAll() {
		List<Member> results = jdbcTemplate.query("select * from MEMBER", memRowMapper);
		return results;
	}

	public int count() {
		Integer count = jdbcTemplate.queryForObject("select count(*) from MEMBER", Integer.class);
		return count;
	}

	public int listcount(String from, String to) {
		Integer count = jdbcTemplate.queryForObject("select count(*) from MEMBER where REGDATE between ? and ?",
				Integer.class, from, to);
		return count;
	}

	public List<Member> selectByRegdate(String from, String to, int page) {
		int limit = 10;
		int srow = (page - 1) * 10 + 1;
		int erow = srow + limit - 1;
		
		List<Member> results = jdbcTemplate.query(
				"select A.* from (select @ROWNUM := @ROWNUM +1 AS rnum, id,password, email, name, regdate from member, (SELECT @ROWNUM := 0) R where REGDATE between ? and ?) A "
				+ "where rnum >= ? and rnum <= ?",
				memRowMapper, from, to, srow, erow);
		return results;
	}

	public Member selectById(Long memId) {
		List<Member> results = jdbcTemplate.query("select * from MEMBER where ID = ?", memRowMapper, memId);
		return results.isEmpty() ? null : results.get(0);
	}
}