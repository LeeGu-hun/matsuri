package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import command.ListCommand;
import command.PagingCommand;
import dao.Member;
import dao.MemberDao;

@Controller
public class MemberListController {
	private MemberDao memberDao;

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@RequestMapping("/member/list")
	public String list(@ModelAttribute("cmd") ListCommand listCommand, @ModelAttribute("pag") PagingCommand pagingCommand, Model model) {
		if (listCommand.getFrom() != null && listCommand.getTo() != null) {
			List<Member> members = memberDao.selectByRegdate(listCommand.getFrom(), listCommand.getTo(), 1);
			int listcount = memberDao.listcount(listCommand.getFrom(), listCommand.getTo());
			
			int maxPage = (int) ((double) listcount / 10 + 0.95);
			int startPage = 1;
			int endPage = startPage + 10 - 1;
			if (endPage > maxPage)
				endPage = maxPage;
			
			model.addAttribute("members", members);
			model.addAttribute("page",1);
			model.addAttribute("listcount",listcount);
			model.addAttribute("startPage",startPage);
			model.addAttribute("endPage",endPage);
			model.addAttribute("pfrom",listCommand.getFrom());
			model.addAttribute("pto",listCommand.getTo());
			
		}else if(pagingCommand.getPfrom() != null && pagingCommand.getPto() != null) {
			List<Member> members = memberDao.selectByRegdate(pagingCommand.getPfrom(), pagingCommand.getPto(), pagingCommand.getPage());
			int listcount = pagingCommand.getListcount();
			
			int maxPage = (int) ((double) listcount / 10 + 0.95);
			int startPage = (((int) ((double) pagingCommand.getPage() / 10 + 0.9)) - 1) * 10 + 1;;
			int endPage = startPage + 10 - 1;
			if (endPage > maxPage)
				endPage = maxPage;
			
			model.addAttribute("members", members);
			model.addAttribute("startPage",startPage);
			model.addAttribute("endPage",endPage);
			model.addAttribute("page",pagingCommand.getPage());
		}
		return "member/memberList";
	}
}