package myServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class J02_Quiz extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>"
				+ "<html>"
				+ 	"<head>"
				+ 		"<meta charset='UTF-8'>"
				+ 		"<title>퀴즈 자기소개</title>"
				+ 	"</head>"
				
				+ 	"<body>"
				+ 		"<h2> 퀴즈 소개</h2>"
				+ 		"<hr><hr> <br>"
				+ 		"이름 : 백승엽 <br> <br>"
				+ 		"나이 : 27 <br> <br>"
				+ 		"인사말 : 안녕하세요. 백승엽입니다. <br>"
				
				+ 	"</body>"
				+ "</html>"
		);
		out.flush();
	}
	
}// class END
