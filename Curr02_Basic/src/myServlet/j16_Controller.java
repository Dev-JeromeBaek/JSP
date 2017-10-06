package myServlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Student;

@WebServlet(urlPatterns={"/cont"})
public class j16_Controller extends HttpServlet {
	
	HashMap<Integer, Student> mapc = new HashMap<>();
	Student stu = new Student();
	private int stuNum;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		mapWorks(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		mapWorks(request, response);
	}
	
	private void mapWorks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String view = request.getParameter("view");
		String works = request.getParameter("works");
		
		System.out.println("view = [" + view + "], works = [" + works + "]");
		
		if(works.equals("moveWork")) {
			
			String nextView = "/Curr02_Basic/j16_" + view + ".jsp";
			response.sendRedirect(nextView);
			
		} else if(works.equals("insertWork")) {
			
			stu = new Student();
			stu.setNum(stuNum);
			stu.setName(request.getParameter("name"));
			stu.setKor(Integer.parseInt(request.getParameter("kor")));
			stu.setEng(IntJop(request, "eng"));
			stu.setMath(IntJop(request, "math"));
			stu.setTotal(stu.getKor() + stu.getEng() + stu.getMath());
			stu.setAvg(stu.getTotal() / 3.0);
			mapc.put(stuNum, stu);
			stuNum++;
			
			RequestDispatcher rd = request.getRequestDispatcher("/j16_" + view + ".jsp");
			rd.forward(request, response);
			
		} else if(works.equals("goSearchWork")) {
			
		}
		
	}
	
	public int IntJop(HttpServletRequest request, String title) {
		String in_Val = request.getParameter("title");
		return Integer.parseInt(in_Val);
	}
	
//	private void totalNNAvg(int kor, int eng, int math) {
//		int total = kor + eng + math;
//		double avg = total /3.0;
//	}
	
}
