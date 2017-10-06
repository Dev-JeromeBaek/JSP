package dto;

import javax.servlet.http.HttpServletRequest;

public class stuDTO {
	
	private int num;
	
	private String name;
	private int kor;
	private int eng;
	private int math;
	
	private int total;
	private double avg;
	
	public stuDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public stuDTO(HttpServletRequest request) {
		this.name = request.getParameter("name");
		this.kor = Integer.parseInt(request.getParameter("kor"));
		this.eng = Integer.parseInt(request.getParameter("eng"));
		this.math = Integer.parseInt(request.getParameter("math"));
		calTotal(kor, eng, math);
		calAvg(total);
	}
	
	public stuDTO(HttpServletRequest request, int num) {
		this.num = num;
		this.name = request.getParameter("name");
		this.kor = Integer.parseInt(request.getParameter("kor"));
		this.eng = Integer.parseInt(request.getParameter("eng"));
		this.math = Integer.parseInt(request.getParameter("math"));
		calTotal(kor, eng, math);
		calAvg(total);
	}
	
	private void calTotal(int kor, int eng, int math) {
		this.total = kor + eng + math;
	}
	
	private void calAvg(int total) {
		this.avg = total / 3.0;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
