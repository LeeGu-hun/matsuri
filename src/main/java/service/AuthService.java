package service;

import dao.AuthInfo;
import dao.Member;
import dao.MemberDao;
import exception.IdPasswordNotMatchingException;

public class AuthService {

	private MemberDao memberDao;
	
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public AuthInfo authenticate(String email, String password) {
		Member member = memberDao.selectByEmail(email);
		if (member == null) {
			throw new IdPasswordNotMatchingException();
		}
		if (!member.matchPassword(password)) {
			throw new IdPasswordNotMatchingException();
		}
		return new AuthInfo(member.getId(), member.getEmail(), member.getName());
	}
}
