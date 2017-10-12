package controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.LoginCommand;
import command.LoginCommandValidator;
import dao.AuthInfo;
import dao.Board;
import dao.BoardDao;
import dao.WriterRequest;
import exception.IdPasswordNotMatchingException;
import service.AuthService;

@Controller
public class LoginController {
	private AuthService authService;
	private BoardDao boardDao;
	
	public BoardDao getBoardDao() {
		return boardDao;
	}
	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}
	
	public void setAuthService(AuthService authService) {
		this.authService = authService;
	}

	@RequestMapping(value ="/main", method = RequestMethod.GET)
	public String form(LoginCommand loginCommand,
			@CookieValue(value = "REMEMBER", required = false) Cookie rememberCookie, Model model, HttpSession session) {
		if (rememberCookie != null) {
			loginCommand.setEmail(rememberCookie.getValue());
			loginCommand.setRememberEmail(true);
		}
		if(session.getAttribute("authInfo")!=null) {
			AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");

			List<Board> boardList = boardDao.getList(authInfo.getId(),1,10);
			model.addAttribute("boardList", boardList);
			model.addAttribute("writerRequest", new WriterRequest());
		}
		return "main";
	}

	@RequestMapping(value ="/main", method = RequestMethod.POST)
	public String submit(
			LoginCommand loginCommand, Errors errors, HttpSession session,
			HttpServletResponse response, Model model) {
		new LoginCommandValidator().validate(loginCommand, errors);
		if (errors.hasErrors()) {
			return "main";
		}
		try {
			AuthInfo authInfo = authService.authenticate(
					loginCommand.getEmail(),
					loginCommand.getPassword());

			session.setAttribute("authInfo", authInfo);
			
			Cookie rememberCookie = 
					new Cookie("REMEMBER", loginCommand.getEmail());
			rememberCookie.setPath("/");
			if (loginCommand.isRememberEmail()) {
				rememberCookie.setMaxAge(60 * 60 * 24 * 30);
			} else {
				rememberCookie.setMaxAge(0);
			}
			response.addCookie(rememberCookie);
			//List<Board> boardList = boardDao.getList();
			
			List<Board> boardList = boardDao.getList(authInfo.getId(),1,10);
			model.addAttribute("boardList", boardList);
			model.addAttribute("writerRequest", new WriterRequest());
			return "main";
		} catch (IdPasswordNotMatchingException e) {
			errors.reject("idPasswordNotMatching");
			return "main";
		}
	}
	
	@RequestMapping(value = "/scrolling.ac")
	public String scrolling(HttpServletRequest request, Model model) throws Exception{
		long hid = Long.parseLong(request.getParameter("hid"));
		int sp = Integer.parseInt(request.getParameter("sp"));
		int ep = Integer.parseInt(request.getParameter("ep"));
		
		List<Board> boardList = boardDao.getList(hid,sp,ep);
		model.addAttribute("boardList",boardList);
		return "board/scrolling";
	}
}