package myServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.People;

@WebServlet(urlPatterns={"/s14"})
public class J14_Controller extends HttpServlet {
	
	private People peo;
	
	public J14_Controller() {
//		Reloading : 즉 변경된 객체를 다시 생성해줘야하기때문에 syso이 찍힌다.
		System.out.println("컨트롤러 생성자 작동됨(전에 저장된 peo정보 사라짐)");
//		peo = new People();
	}// con END
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		contWorks(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		contWorks(request, response);
	}
	
	private void contWorks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String view = request.getParameter("view");
		String works = request.getParameter("works");
		
		System.out.println("view : " + view + " // works : " + works);
		
		
		if(works.equals("move"))
		{
			String nextView = "/Curr02_Basic/j14_" + view + ".jsp";
			response.sendRedirect(nextView);
		} else if(works.equals("insertOne")) {
			
			String name = request.getParameter("name");
			String rcv = request.getParameter("age");
			int age = Integer.parseInt(rcv);
			
			peo = new People(name, age);	// 컬렉션일땐 여기서 new하면 안되!!!!!!!!!!!!
			
//			1. redirect를 이용하여 msg를 전송하는 경우.
//				=> 파라미터에 띄어쓰기 값 이용 불가능
//			String nextView = "/Curr02_Basic/j14_" + view + ".jsp?msg=저장이 완료되었습니다.";
//			response.sendRedirect(nextView);
			
//			2. forward
			request.setAttribute("msg", "저장이 완료되었습니다.");
			
			String nextView = "/j14_" + view + ".jsp";
			RequestDispatcher rd = request.getRequestDispatcher(nextView);
			rd.forward(request, response);
			
		} else if(works.equals("selectAll")) {
			if(peo == null) {	// 정보 없음
				request.setAttribute("msg", "저장된 정보가 없습니다.");
				view = "home";
			} else {
				request.setAttribute("peo", peo);
			}
			String nextView = "/j14_" + view + ".jsp";
			RequestDispatcher rd = request.getRequestDispatcher(nextView);
			rd.forward(request, response);
		}
	}
	
}// class END
