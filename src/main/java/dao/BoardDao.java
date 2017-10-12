package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

public class BoardDao {
	private JdbcTemplate jdbcTemplate;

	private RowMapper<Board> boaRowMapper = new RowMapper<Board>() {
		public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
			Board board = new Board(rs.getInt("NUM"), rs.getInt("HOST_ID"), rs.getInt("WRITER_ID"), rs.getInt("RE_REF"),
					rs.getInt("RE_LEV"), rs.getInt("RE_SEQ"), rs.getInt("READCOUNT"), rs.getString("PW"),
					rs.getString("SUBJECT"), rs.getString("CONTENT"), rs.getString("FILE"), rs.getTimestamp("DATE"));
			return board;
		}
	};
	
	private RowMapper<Board> boaRowMapper1 = new RowMapper<Board>() {
		public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
			Board board = new Board(rs.getInt("HOST_ID"), rs.getInt("WRITER_ID"),
					rs.getString("CONTENT"), rs.getString("FILE"), rs.getTimestamp("DATE"), rs.getString("NAME"));
			return board;
		}
	};

	public BoardDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Board> getList() {
		List<Board> results = jdbcTemplate.query("select * from board", boaRowMapper);
		return results;
	}
	
	public int getListCount(long host_id) {
		List<Board> results = jdbcTemplate.query("select * from board where HOST_ID = "+host_id, boaRowMapper);
		return results.size();
	}
	

	public List<Board> getList(long host_id, int sp, int ep) {
		List<Board> results = jdbcTemplate.query(
				"select A.* from (select @ROWNUM := @ROWNUM - 1 AS ROWNUM, HOST_ID, WRITER_ID, CONTENT, FILE, DATE, NAME "
				+ "FROM BOARD,MEMBER, (SELECT @ROWNUM := (select count(*) from board where HOST_ID = "+host_id+") + 1) R WHERE HOST_ID = "+host_id+" AND ID = WRITER_ID"
				+ " ORDER BY DATE DESC) A WHERE ROWNUM BETWEEN "+sp+" AND "+ep,boaRowMapper1);
		return results;
	}

	public void insert(final Board board) {
		KeyHolder keyHolder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement(
						"insert into board (HOST_ID, WRITER_ID, CONTENT, FILE, DATE, READCOUNT, RE_REF, RE_LEV, RE_SEQ) "
								+ "values (?, ?, ?, ?, ?, ?, ?, ?, ?)",
						new String[] { "ID" });
				pstmt.setLong(1, board.getHost_id());
				pstmt.setLong(2, board.getWriter_id());
				pstmt.setString(3, board.getContent());
				pstmt.setString(4, board.getFile());
				pstmt.setTimestamp(5, new Timestamp(board.getDate().getTime()));
				pstmt.setInt(6, 0);
				pstmt.setInt(7, 0);
				pstmt.setInt(8, 0);
				pstmt.setInt(9, 0);
				return pstmt;
			}
		}, keyHolder);
		Number keyValue = keyHolder.getKey();
		board.setNum(keyValue.intValue());
	}
}