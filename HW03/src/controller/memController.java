package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.memAction;
import dto.memDTO;

@WebServlet("/mem/*")
public class memController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		memWorks(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		memWorks(request, response);
	}
	
	private void memWorks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rcvUri = request.getRequestURI();
		
		String contextPath = request.getContextPath();
		
		String svlPath = request.getServletPath();
		
		String works = rcvUri.replaceAll(contextPath + svlPath + "/", "");
		
		memAction action = new memAction();
		
		String viewName = request.getParameter("viewName");

//		================================================================================
//		[확인]
		System.out.println("rcvUri : " + rcvUri);
		System.out.println("contextPath : " + contextPath);
		System.out.println("svlPath : " + svlPath);
		System.out.println("works : " + works);
		System.out.println("viewName : " + viewName);
//		================================================================================
		
//		================================================================================
//		[@@DB로 가는 작업 진행!@@] - 시작!!
		if(works.equals("insertInfo")) 
		{
			int res = action.insertInfo(request);
			
			if(res > 0)
			{
				action = new memAction();
				
				ArrayList<memDTO> listc = action.showList(request);
				
			} else {
				viewName = "homePage";
			}
		} else if(works.equals("showList")) {
			ArrayList<memDTO> listc = action.showList(request);
		}
		
//		================================================================================
//		[@@DB갔다가 페이지 띄워주기 바로 직전!@@] - 마무리!!
		RequestDispatcher rd = request.getRequestDispatcher("/"+viewName+".jsp");
		rd.forward(request, response);
	}
}
