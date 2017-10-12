package service;

import org.springframework.transaction.annotation.Transactional;

import dao.Board;
import dao.BoardDao;

public class BoardWriteService {
	private BoardDao boardDao;

	public BoardDao getBoardDao() {
		return boardDao;
	}

	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}

	public BoardWriteService(BoardDao boardDao) {
		super();
		this.boardDao = boardDao;
	}
/*
	public List getBoradList(long host_id, int startPage, int endPage) {
		List list = boardDao.getList(host_id, startPage, endPage);
		return list;
	}

	public int getListCount(long host_id) {
		List list = boardDao.getListCount(host_id);
	}
*/
	
	@Transactional
	public void write(Board board) {
		boardDao.insert(board);
	}
	
}