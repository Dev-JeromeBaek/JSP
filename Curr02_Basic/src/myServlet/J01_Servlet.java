package myServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//	1. extends HttpServlet
//	2. URL과 클래스파일을 Mapping @ web.xml

public class J01_Servlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get방식으로 접근 시 호출되는 메소드");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse responce) throws ServletException, IOException {
		System.out.println("post방식으로 접금 시 호출되는 메소드");
	}

}// class END
