package myServlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Student;

@WebServlet(urlPatterns={"/con"})
public class J15_Controller extends HttpServlet {
	
	ArrayList<Student> listc = new ArrayList<>();
	private Student stu;
	private int stuNum;
	
	public J15_Controller() {
		System.out.println("이거 나오면 새로만들어지는거니까 ");
		
	}// con END
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		control_Works(request, response); 
	}// doGet() END
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		control_Works(request, response);
	}// doPost() END
	
	private void control_Works(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String view = request.getParameter("view");
		String works = request.getParameter("works");
		
		System.out.println("view = [" + view + "], works = [" + works + "]");
		
		if(works.equals("move")) {
			
			String nextView = "/Curr02_Basic/j15_" + view + ".jsp";
			response.sendRedirect(nextView);
			
		} else if(works.equals("insertOne")) {
			
			stu = new Student();
			stu.setName(request.getParameter("name"));
			stu.setKor(Integer.parseInt(request.getParameter("kor")));
			stu.setEng(Integer.parseInt(request.getParameter("eng")));
			stu.setMath(Integer.parseInt(request.getParameter("math")));
			stu.setTotal(stu.getKor() + stu.getEng() + stu.getMath());
			stu.setAvg(stu.getTotal() / 3.0);
			stu.setNum(stuNum);
			listc.add(stu);
			stuNum++;
			
			request.setAttribute("out_Msg", "저장이 완료되었습니다.");
			
			String nextView = "/j15_" + view + ".jsp";
			RequestDispatcher rd = request.getRequestDispatcher(nextView);
			rd.forward(request, response);
			
		} else if(works.equals("selectList")) {
			if(listc.isEmpty())
			{
				request.setAttribute("out_Msg", "저장된 정보가 없습니다.");
				view = "home";
			} else {
				request.setAttribute("listc", listc);
			}
			String nextView = "/j15_" + view + ".jsp";
			RequestDispatcher rd = request.getRequestDispatcher(nextView);
			rd.forward(request, response);
			
		} else if(works.equals("selectOne")) {
			int num = Integer.parseInt(request.getParameter("num"));
			for(Student each : listc)
			{
				if(each.getNum() == num)
				{
					stu = new Student();
					stu.setNum(num);
					stu.setName(each.getName());
					stu.setKor(each.getKor());
					stu.setEng(each.getEng());
					stu.setMath(each.getMath());
					stu.setTotal(each.getTotal());
					stu.setAvg(each.getAvg());
					request.setAttribute("stu", stu);
					String nextView = "/j15_" + view + ".jsp";
					RequestDispatcher rd = request.getRequestDispatcher(nextView);
					rd.forward(request, response);
					break;
				}
			}
		} else if(works.equals("mod")) {
			int num = Integer.parseInt(request.getParameter("num"));
			for(Student each : listc)
			{
				if(each.getNum() == num)
				{
					stu = new Student();
					stu.setNum(num);
					stu.setName(each.getName());
					stu.setKor(each.getKor());
					stu.setEng(each.getEng());
					stu.setMath(each.getMath());
					stu.setTotal(each.getTotal());
					stu.setAvg(each.getAvg());
					request.setAttribute("stu", stu);
					String nextView = "/j15_" + view + ".jsp";
					RequestDispatcher rd = request.getRequestDispatcher(nextView);
					rd.forward(request, response);
					break;
				}
			}
		} else if(works.equals("modInfo")) {
			int num = Integer.parseInt(request.getParameter("num"));
			for(Student each : listc)
			{
				if(each.getNum() == num)
				{
					each.setNum(num);
					each.setName(request.getParameter("name"));
					each.setKor(Integer.parseInt(request.getParameter("kor")));
					each.setEng(Integer.parseInt(request.getParameter("eng")));
					each.setMath(Integer.parseInt(request.getParameter("math")));
					each.setTotal(each.getKor() + each.getEng() + each.getMath());
					each.setAvg(each.getTotal() / 3.0);
					request.setAttribute("out_Msg", "수정이 완료되었습니다.");
					break;
				}
			}
			request.setAttribute("listc", listc);
			String nextView = "/j15_" + view + ".jsp";
			RequestDispatcher rd = request.getRequestDispatcher(nextView);
			rd.forward(request, response);
			
		} else if(works.equals("del")) {
			System.out.println("AAA");
			int num = Integer.parseInt(request.getParameter("num"));
			System.out.println(num);
			
			for(Student each : listc)
			{
				if(each.getNum() == num)
				{
					listc.remove(each);
					break;
				}
			}
//			listc.remove(num);
			if(listc.isEmpty())
			{
				request.setAttribute("out_Msg", "더이상 정보가 없습니다.");
				view = "home";
			} else {
				request.setAttribute("out_Msg",	"삭제가 완료되었습니다.");
				request.setAttribute("listc", listc);
			}
			String nextView = "/j15_" + view + ".jsp";
			RequestDispatcher rd = request.getRequestDispatcher(nextView);
			rd.forward(request, response);
			
		} else if(works.equals("searchName")) {
//			System.out.println("AA");
			String name = request.getParameter("name");
//			System.out.println("BB");
			for(Student each : listc)
			{
//				System.out.println(each.getName());
//				System.out.println(name);
				if(each.getName().equals(name))
				{
//					System.out.println("CC");
					stu = new Student();
					stu.setName(name);
					stu.setNum(each.getNum());
					stu.setKor(each.getKor());
					stu.setEng(each.getEng());
					stu.setMath(each.getMath());
					stu.setTotal(each.getTotal());
					stu.setAvg(each.getAvg());
					request.setAttribute("stu", stu);
					String nextView = "/j15_" + view + ".jsp";
					RequestDispatcher rd = request.getRequestDispatcher(nextView);
					rd.forward(request, response);
					break;
				}
			}
		}
		
	}// control_Works() END
	
}// class END
