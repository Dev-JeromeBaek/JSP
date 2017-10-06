package myServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//	서블릿의 이용
//	1. extends HttpServlet
//	2. URL로 서블릿에 접근할 때 호출되는 메소드
//		1. service -> 2. doGet / doPost
//	3. 클래스 파일이므로, 컴파일 과정을 위해 서버재부팅 필요
//	4. web.xml 파일에 URL에 대한 서블릿 파일 이름을 연결함.
//	5. web.xml 파일 수정 시 서버 재가동 필요.

//	문제 : /Curr01_Basic/b로 URL입력 시 자기소개가 나오도록
//		 서블릿 작성

public class J02_AAA extends HttpServlet {
	//  extends HttpServlet : 통신이 가능한 클래스 파일을 만든다. (Servlet을 만든다.)
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpServletRequest request : 서버에 있는 정보를 프로그램상으로 보내줌.
//		HttpServletResponse response : 프로그램상에 있는 정보를 서버로 보내줌.
		
		System.out.println("서블릿의 service 메소드 호출됨");
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();	// OutputStream을 가져온다. 정해져있는거!!
		
		out.println(
			"<!DOCTYPE html>"
			+ "<html>"
			+ "<head>"
			+ "<meta charset='UTF-8'>"
			+ "<title>나의 첫 서블릿</title>"
			+ "<body>"
			+ "<h2>인사 정보 입력</h2>"
			+ "<hr>"
			+ "<hr>"
			+ "<hr>"
			+ "<hr>"
			+ "<hr>"
			+ "<hr>"
			+ "<hr>"
			+ "<hr>"
			+ "<form action='/Curr01_Basic/j01_aaa.html'>"
			+ "이름 입력 : <input type='text' name='name'/> <br>"
			+ "나이 입력 : <input type='text' age='age'/> <br>"
			+ "<input type='submit' value='aaa.html로 이동'/> <br>"
			+ "</form>"
			+ "</body>"
			+ "</head>"
			+ "</html>"	
		);
		
		out.flush();
		
		
	}
	
	
}// class END
