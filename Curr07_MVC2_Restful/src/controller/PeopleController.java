package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns={"/peo/*"})
@WebServlet("/peo/*")
public class PeopleController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		peoWorks(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		peoWorks(request, response);
	}
	
	private void peoWorks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rcvUri = request.getRequestURI();
		System.out.println("rcvUri : " + rcvUri);
		
		String contextPath = request.getContextPath();
		System.out.println("contextPath : " + contextPath);
		
		String svlPath = request.getServletPath();
		System.out.println("svlPath : " + svlPath);
		
		String works = rcvUri.replaceAll(contextPath+svlPath+"/", "");
		System.out.println("works : " + works);
	}
}
