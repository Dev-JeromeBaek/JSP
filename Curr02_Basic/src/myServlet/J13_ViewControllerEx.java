package myServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/s13Ex"})
public class J13_ViewControllerEx extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nextView = request.getParameter("view");
		
		RequestDispatcher rd = request.getRequestDispatcher("/" + nextView);
														// ("/" + nextView)  절대경로!!
		rd.forward(request, response);
		
		
//		PrintWriter out = response.getWriter();
//		out.print("<jsp:forward page='" + nextView + "'/>");
//		↑↑↑↑↑↑↑↑↑↑↑↑↑ 이 파일이 JSP파일이 아니기 떄문에 사용 불가능!!
		
	}
}
