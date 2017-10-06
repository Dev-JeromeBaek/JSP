package dto;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

public class teaDTO {
	
	private int tnum;
	
	private String tname;
	private String tid;
	private String tpw;
	private int thak;
	private int tban;
	
	public teaDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public teaDTO(HttpServletRequest request) {
		super();
		this.tname = request.getParameter("tname");
		this.tid = request.getParameter("tid");
		this.tpw = request.getParameter("tpw");
		this.thak = Integer.parseInt(request.getParameter("thak"));
		this.tban = Integer.parseInt(request.getParameter("tban"));
	}
	
	public teaDTO(HttpServletRequest request, int tnum, String tid) {
		super();
		this.tnum = tnum;
		this.tid = tid;
		this.tpw = request.getParameter("tpw");
		this.tname = request.getParameter("tname");
		this.thak = Integer.parseInt(request.getParameter("thak"));
		this.tban = Integer.parseInt(request.getParameter("tban"));
	}

	public int getTnum() {
		return tnum;
	}
	public void setTnum(int tnum) {
		this.tnum = tnum;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getTpw() {
		return tpw;
	}
	public void setTpw(String tpw) {
		this.tpw = tpw;
	}
	public int getThak() {
		return thak;
	}
	public void setThak(int thak) {
		this.thak = thak;
	}
	public int getTban() {
		return tban;
	}
	public void setTban(int tban) {
		this.tban = tban;
	}
	
}
