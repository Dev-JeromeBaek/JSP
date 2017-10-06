package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j12")
public class J12_AjaxController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.j12Works(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		this.j12Works(request, response);
	}
	
	private void j12Works(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		결론적으로 얘가 보내주는 것은 문장형태의 데이터 (out.print())
		
//		String sndMsg = "서블릿에서 보내는 문자열 데이터";
//		String sndMsg = "10";
		
		String sndMsg = "   둘리    -  10  /  도우너    -    20   ";
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(sndMsg);
		
		out.flush();	// 해도되고 안해도되고
		
	}
	
}
