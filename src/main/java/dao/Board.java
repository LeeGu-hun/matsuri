package dao;

import java.util.Date;

public class Board {
	private String PW, subject, content, file, name;
	private Date date;
	private long num, host_id, writer_id, readcount, re_ref, re_lev, re_seq;

	public Board(long host_id, long writer_id, String content, String file, Date date) {
		this.host_id = host_id;
		this.writer_id = writer_id;
		this.file = file;
		this.content = content;
		this.date = date;
	}
	
	public Board(long host_id, long writer_id, String content, String file, Date date, String name) {
		super();
		this.content = content;
		this.file = file;
		this.name = name;
		this.date = date;
		this.host_id = host_id;
		this.writer_id = writer_id;
	}

	public Board(long num, long host_id, long writer_id, int re_ref, int re_lev, int re_seq, int readcount, String pW,
			String subject, String content, String file, Date date) {
		super();
		this.num = num;
		this.host_id = host_id;
		this.writer_id = writer_id;
		this.re_ref = re_ref;
		this.re_lev = re_lev;
		this.re_seq = re_seq;
		this.readcount = readcount;
		this.PW = pW;
		this.subject = subject;
		this.content = content;
		this.file = file;
		this.date = date;
	}

	public String getPW() {
		return PW;
	}

	public void setPW(String pW) {
		PW = pW;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public long getNum() {
		return num;
	}

	public void setNum(long num) {
		this.num = num;
	}

	public long getHost_id() {
		return host_id;
	}

	public void setHost_id(long host_id) {
		this.host_id = host_id;
	}

	public long getWriter_id() {
		return writer_id;
	}

	public void setWriter_id(long writer_id) {
		this.writer_id = writer_id;
	}

	public long getReadcount() {
		return readcount;
	}

	public void setReadcount(long readcount) {
		this.readcount = readcount;
	}

	public long getRe_ref() {
		return re_ref;
	}

	public void setRe_ref(long re_ref) {
		this.re_ref = re_ref;
	}

	public long getRe_lev() {
		return re_lev;
	}

	public void setRe_lev(long re_lev) {
		this.re_lev = re_lev;
	}

	public long getRe_seq() {
		return re_seq;
	}

	public void setRe_seq(long re_seq) {
		this.re_seq = re_seq;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}