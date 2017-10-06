package myServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/s05"})
public class J05_Servlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		int total = kor + eng + math;
		double avg = total/3.0;
		String result;
		if(avg >= 85.5)
		{
			result = "합격입니다.";
		} else {
			result = "불합격입니다.";
		}
		
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>"
				+ "<html>"
				+ "<head>"
				+ "<meta charset='UTF-8'>"
				+ "</head>"
				+ "<body>"
				+ "<table border='1' style='text-align: center;'>"
				+ "<tr>"
				+ "<td>이 름</td>"
				+ "<td>국어점수</td>"
				+ "<td>영어점수</td>"
				+ "<td>수학점수</td>"
				+ "<td>총 점</td>"
				+ "<td>평 균</td>"
				+ "<td>합격결과</td>"
				+ "</tr>"
				+ "<tr>"
				+ "<td>" + name + "</td>"
				+ "<td>" + kor + "</td>"
				+ "<td>" + eng + "</td>"
				+ "<td>" + math + "</td>"
				+ "<td>" + total + "</td>"
				+ "<td>" + avg + "</td>"
				+ "<td>" + result + "</td>"
				+ "</tr>"
				+ "</table>"
				+ "</body>"
				+ "</html>");
		out.flush();
	}
	
}
