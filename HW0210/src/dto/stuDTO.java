package dto;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;

public class stuDTO {
	
	private int snum;
	
	private String sname;
	private String sgender;
	private int shak;
	private int sban;
	private String sbirth;
	private String orgName;
	private String sysName;
	
	private int kor = 0;
	private int eng = 0;
	private int math = 0;
	private int total = 0;
	private double avg = 0.0;
	
	public stuDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public stuDTO(String sname, 
			String sgender, int shak, 
			int sban, String sbirth, 
			String orgName, String sysName) {
		super();
		this.sname = sname;
		this.sgender = sgender;
		this.shak = shak;
		this.sban = sban;
		this.sbirth = sbirth;
		this.orgName = orgName;
		this.sysName = sysName;
	}
	
	
	
	public stuDTO(HttpServletRequest request, stuDTO sdto) {
		this.snum = sdto.getSnum();
		this.sname = sdto.getSname();
		this.sgender = sdto.getSgender();
		this.shak = sdto.getShak();
		this.sban = sdto.getSban();
		this.sbirth = sdto.getSbirth();
		this.orgName = sdto.getOrgName();
		this.sysName = sdto.getSysName();
		this.kor = Integer.parseInt(request.getParameter("kor"));
		this.eng = Integer.parseInt(request.getParameter("eng"));
		this.math = Integer.parseInt(request.getParameter("math"));
		calTotal(kor, eng, math);
		calAvg(total);
	}
	
	public stuDTO(MultipartRequest mreq, stuDTO sdto, int snum) {
		this.snum = snum;
		this.sname = sdto.getSname();
		this.sgender = sdto.getSgender();
		this.shak = sdto.getShak();
		this.sban = sdto.getSban();
		this.sbirth = mreq.getParameter("sbirth");
		this.orgName = sdto.getOrgName();
		this.sysName = sdto.getSysName();
		this.kor = Integer.parseInt(mreq.getParameter("kor"));
		this.eng = Integer.parseInt(mreq.getParameter("eng"));
		this.math = Integer.parseInt(mreq.getParameter("math"));
		calTotal(kor, eng, math);
		calAvg(total);
	}

//	public stuDTO(HttpServletRequest request, stuDTO sdto, int snum) {
//		this.snum = snum;
//		this.sname = sdto.getSname();
//		this.sgender = sdto.getSgender();
//		this.shak = sdto.getShak();
//		this.sban = sdto.getSban();
//		this.sbirth = request.getParameter("sbirth");
//		this.orgName = sdto.getOrgName();
//		this.sysName = sdto.getSysName();
//		this.kor = Integer.parseInt(request.getParameter("kor"));
//		this.eng = Integer.parseInt(request.getParameter("eng"));
//		this.math = Integer.parseInt(request.getParameter("math"));
//		calTotal(kor, eng, math);
//		calAvg(total);
//	}
	
	public stuDTO(MultipartRequest mreq, stuDTO sdto) {
		this.snum = sdto.getSnum();
		this.sname = sdto.getSname();
		this.sgender = sdto.getSgender();
		this.shak = sdto.getShak();
		this.sban = sdto.getSban();
		this.sbirth = mreq.getParameter("sbirth");
		this.orgName = mreq.getOriginalFileName("upfile");
		this.sysName = mreq.getFilesystemName("upfile");
		this.kor = Integer.parseInt(mreq.getParameter("kor"));
		this.eng = Integer.parseInt(mreq.getParameter("eng"));
		this.math = Integer.parseInt(mreq.getParameter("math"));
		calTotal(kor, eng, math);
		calAvg(total);
	}

	private void calTotal(int kor, int eng, int math) {
		this.total = kor + eng + math;
	}
	
	private void calAvg(int total) {
		this.avg = total / 3.0;
	}
	
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSgender() {
		return sgender;
	}
	public void setSgender(String sgender) {
		this.sgender = sgender;
	}
	public int getShak() {
		return shak;
	}
	public void setShak(int shak) {
		this.shak = shak;
	}
	public int getSban() {
		return sban;
	}
	public void setSban(int sban) {
		this.sban = sban;
	}
	public String getSbirth() {
		return sbirth;
	}
	public void setSbirth(String sbirth) {
		this.sbirth = sbirth;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public String getSysName() {
		return sysName;
	}
	public void setSysName(String sysName) {
		this.sysName = sysName;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	
}
