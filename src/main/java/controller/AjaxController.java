package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import dao.Board;
import dao.BoardDao;

@RestController
public class AjaxController {
	private BoardDao boardDao;
	
	public BoardDao getBoardDao() {
		return boardDao;
	}
	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}
}
