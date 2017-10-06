package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.stuAction;
import dto.stuDTO;

@WebServlet("/stu/*")
public class stuController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		stuWorks(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		stuWorks(request, response);
	}
	
	private void stuWorks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rcvUri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String svlPath = request.getServletPath();
		
		String works = rcvUri.replaceAll(contextPath+svlPath+"/", "");
		System.out.println("rcvUri : " + rcvUri);
		System.out.println("contextPath : " + contextPath);
		System.out.println("svlPath : " + svlPath);
		System.out.println("works : " + works);
		System.out.println();
		
		String centerView = null;
		stuAction action = new stuAction();
		
		if(works.equals("home")) {
			request.setAttribute("msg", "메인으로 이동합니다.");
			
		} else if(works.equals("insertPage")) {
			centerView = "/insertPage.jsp";
			
		} else if(works.equals("insertOne")) {
			int res = action.insertOne(request);
			
			if(res > 0) {
				request.setAttribute("msg", "저장 성공");
			} else {
				request.setAttribute("msg", "저장 실패");
			}
			
		} else if(works.equals("selectListPage")) {
			ArrayList<stuDTO> listc = action.selectListPage();
			if(listc != null) {
				request.setAttribute("msg", "학생 목록 가져오기 성공");
				request.setAttribute("listc", listc);
				centerView = "/selectListPage.jsp";
			} else {
				request.setAttribute("msg", "학생 목록 가져오기 실패");
			}
			
		} else if(works.equals("selectOne")) {
			int num = Integer.parseInt(request.getParameter("num"));
			stuDTO dto = action.selectOne(num);
			if(dto != null) {
				request.setAttribute("msg", "상세 정보 가져오기 성공");
				request.setAttribute("dto", dto);
				centerView = "/selectOne.jsp";
			} else {
				request.setAttribute("msg", "상세 정보 가져오기 실패");
				centerView = "/selectListPage.jsp";
			}
			
		} else if(works.equals("updatePage")) {
			int num = Integer.parseInt(request.getParameter("num"));
			stuDTO dto = action.selectOne(num);
			if(dto != null) {
				request.setAttribute("msg", "수정할 정보 가져오기 성공");
				request.setAttribute("dto", dto);
				centerView = "/updatePage.jsp";
			} else {
				request.setAttribute("msg", "수정할 정보 가져오기 실패");
				centerView = "/selectOne.jsp";
			}
		} else if(works.equals("updateOne")) {
			int num = Integer.parseInt(request.getParameter("num"));
			int res = action.updateOne(request, num);
			if(res > 0) {
				request.setAttribute("msg", "수정 성공");
			} else {
				request.setAttribute("msg", "수정 실패");
			}
//	=====================================================================
			// 핵심키워드!! connection이 close되어있어서 안됨!!!!
			action = new stuAction();
//	=====================================================================
			stuDTO dto = action.selectOne(num);
			request.setAttribute("dto", dto);
			centerView = "/selectOne.jsp";
		} else if(works.equals("deleteOne")) {
			int num = Integer.parseInt(request.getParameter("num"));
			int res = action.deleteOne(num);
			if(res > 0) {
				request.setAttribute("msg", "삭제 성공");
			} else {
				request.setAttribute("msg", "삭제 실패");
			}
		}
		
//		[centerPage 셋팅]
		request.setAttribute("centerView", centerView);
		
		RequestDispatcher rd = request.getRequestDispatcher("/mainIndexPage.jsp");
		rd.forward(request, response);
	}
}
