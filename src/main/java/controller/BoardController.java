package controller;

import java.io.File;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import command.BoardCommand;
import dao.Board;
import dao.WriterRequest;
import service.BoardWriteService;

@Controller
public class BoardController {
	private BoardWriteService boardWriteService;

	public BoardWriteService getBoardWriteService() {
		return boardWriteService;
	}

	public void setBoardWriteService(BoardWriteService boardWriteService) {
		this.boardWriteService = boardWriteService;
	}

	@RequestMapping("/writeEnd")
	public String write(BoardCommand wrq, Model model) {
		Board board;
		MultipartFile multi = wrq.getFile();
		
		if(multi.getOriginalFilename().isEmpty()&&(wrq.getConent().isEmpty()||wrq.getConent().equals(""))) {
			return "redirect:/main";
		}
		
		if (!multi.getOriginalFilename().isEmpty()) {
			String fileName = multi.getOriginalFilename();

			String newfileName = System.currentTimeMillis() + "_" + fileName;
			board = new Board(wrq.getHostid(), wrq.getWriterid(), wrq.getConent(), newfileName, new Date());
			boardWriteService.write(board);

			String path = wrq.getUpDir() + newfileName;

			try {
				File file = new File(path);
				multi.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			board = new Board(wrq.getHostid(), wrq.getWriterid(), wrq.getConent(), null, new Date());
			boardWriteService.write(board);
		}
		return "board/writeEnd";
	}
	
	@RequestMapping("/search")
	public String search() {
		return "search/search";
	}
	
	@RequestMapping("/detail")
	public String detail() {
		return "bh/StageInfo";
	}
	
	@RequestMapping("/detail2")
	public String detail2() {
		return "bh/LocationDetail";
	}
	
	@RequestMapping("/detail3")
	public String detail3() {
		return "bh/LocationInfo";
	}
	
	@RequestMapping("/detail4")
	public String detail4() {
		return "bh/teamDetail";
	}
	
	@RequestMapping("/detail5")
	public String detail5() {
		return "bh/yemaeDetail";
	}
	
	@RequestMapping("/detail6")
	public String detail6() {
		return "bh/yemaeList";
	}
}