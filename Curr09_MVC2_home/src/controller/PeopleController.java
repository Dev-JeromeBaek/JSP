package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.PeopleAction;
import dto.PeopleDTO;

@WebServlet("/ppp/*")
public class PeopleController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		peoWorks(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		peoWorks(request, response);
	}
	
	private void peoWorks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rcvUri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String svlPath = request.getServletPath();
		
		System.out.println("contextPath : " + contextPath);
		System.out.println("svlPath : " + svlPath);
		
		String works = rcvUri.replaceAll(contextPath+svlPath+"/", "");
		System.out.println("rcvUri : " + rcvUri);
		System.out.println("peo works : " + works);
		
		String mainView = null;
		PeopleAction action = new PeopleAction();
		
		if(works.equals("insertForm")) {
			mainView = "/peo/insertForm.jsp";
		} else if(works.equals("home")) {
			mainView = "/mainHome.jsp";
		} else if(works.equals("insertOne")) {
			int res = action.insertOne(request);
//			HttpSession session = request.getSession();
			
			if(res > 0) {
//				session.setAttribute("insertOneMsg", "저장이 완료되었습니다.");
				response.sendRedirect("/Curr09_MVC2_home/ppp/selectList");
				return;
			} else {
				
				mainView = "/peo/insertForm.jsp";
			}
			
		} else if(works.equals("selectList")) {
			ArrayList<PeopleDTO> listc = action.selectList();
			mainView = "/peo/selectList.jsp";
			String msg = listc == null ? "저장된 정보가 없습니다." : null;
			
			request.setAttribute("msg", msg);
			request.setAttribute("listc", listc);
			
//			HttpSession session = request.getSession();
//			if(session.getAttribute("insertOneMsg") != null) {
//				request.setAttribute("msg", session.getAttri bute("insertOneMsg"));
//				session.removeAttribute("insertOneMsg");
//			}
			
		} else if(works.equals("selectOne")) {
			PeopleDTO dto = action.selectOne(request);
			request.setAttribute("dto", dto);
			mainView = "/peo/selectOne.jsp";
		}
		request.setAttribute("mainView", mainView);
										// 페이지가 여러개 합쳐져있는걸 보여줘야함!!!
		RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
		rd.forward(request, response);
		
	}
	
}// controller END
