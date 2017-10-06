package myServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/s041"})
public class J04_Servlet_Ans extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		works(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		works(request, response);
	}
	
	private void works(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		PrintWriter out = response.getWriter();
		
		out.println(
			"<!DOCTYPE html>"
			+ "<html>"
			+ "<head>"
			+ "<meta charset='UTF-8'>"
			+ "</head>"
			+ "<body>"
			+ "<table border='1'>"
			+ "<tr>"
			+ "<td>이 름</td>"
			+ "<td>" + name + "</td>"
			+ "</tr>"
			+ "<tr>"
			+ "<td>나 이</td>"
			+ "<td>" + age + "</td>"
			+ "</tr>"
			+ "</table>"
			+ "</body>"
			+ "</head>"
			+ "</html>"
		);
		
	}// works
}
