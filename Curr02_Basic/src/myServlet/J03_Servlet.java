package myServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

@WebServlet(urlPatterns={"/s03"})
public class J03_Servlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");	// 프로그램이 server에게 보내주는 글씨가 UTF-8이다.
		PrintWriter out = response.getWriter();
		
		out.println(
			"<!DOCTYPE html>"
			+ "<html>"
			+ "<head>"
			+ "<meta charset ='UTF-8'>" // 서버가 프로그램에게 받은 코드를 클라이언트에게 보내주는 글씨가 UTF-8이다.
			+ "</meta>"
			+ "</head>"
			+ "<body>"
			+ "<a href='/Curr02_Basic/j03_jspPage.jsp'>j03_jspPage로 이동</a>"
			+ "</body>"
			+ "</html>"
				
		);
		
	}
			
}
