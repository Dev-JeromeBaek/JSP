package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j14")
public class J14_AjaxController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.ajaxWorks(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		this.ajaxWorks(request, response);
	}
	
	private void ajaxWorks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		response.setContentType("text/xml");
		// 출력 결과물에 대한 컨턴타입;
		response.setCharacterEncoding("UTF-8");
		// 출력 결과물에 대한 인코딩;
		//↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
//		JSP에서 맨위에 페이지설정하는 
//		contentType="text/html; charset=UTF-8" 과 같음!!
		
		
		
		PrintWriter out = response.getWriter();
		
		String sndMsg = 
				"<data>"
				+ "<people name='둘리' img='박환희1.png'/>"
				+ "<people name='둘리' img='박환희4.png'/>"
				+ "<people name='둘리' img='박환희5.png'/>"
				+ "</data>";
		
		out.print(sndMsg);
	}
}
