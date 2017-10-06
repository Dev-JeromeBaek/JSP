package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.PeopleAction;
import dto.PeopleDTO;

@WebServlet(urlPatterns={"/peo"})
public class PeopleController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		controllerWorks(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		controllerWorks(request, response);
	}
	
	private void controllerWorks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String works = request.getParameter("works");
		System.out.println("peo works : " + works);
		
		PeopleAction action = new PeopleAction();
		String viewName = null;
		
		if(works.equals("insertOne")) 
		{
			int res = action.insertOne(request);
			
			if(res > 0) 
			{			// selectList 처리 및 이동
				action = new PeopleAction(); //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
				// 위부분은 MVC구조가 아닌 생성자로 Connection을 선언해두었기에 적어줘야 하는 코드!
				ArrayList<PeopleDTO> listc = action.selectList(request);
				viewName = "/j02_selectList.jsp";
				
			} else {	// insertForm 이동
				viewName = "/j01_insertForm.jsp";
			}
		} else if(works.equals("selectList")) {
			ArrayList<PeopleDTO> listc = action.selectList(request);
			viewName = "/j02_selectList.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(viewName);
		rd.forward(request, response);
		
	}// works END
	
}
