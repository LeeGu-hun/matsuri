package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class PagingCommand {
	private int page, listcount;
	private String pfrom, pto;

	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getListcount() {
		return listcount;
	}
	public void setListcount(int listcount) {
		this.listcount = listcount;
	}
	public String getPfrom() {
		return pfrom;
	}
	public void setPfrom(String pfrom) {
		this.pfrom = pfrom;
	}
	public String getPto() {
		return pto;
	}
	public void setPto(String pto) {
		this.pto = pto;
	}
	

}