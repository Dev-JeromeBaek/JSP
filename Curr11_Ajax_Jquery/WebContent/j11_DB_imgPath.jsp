<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  	<%
  		HashMap<String, String> mapc = new HashMap();
  		mapc.put("둘리", "박환희1.png");
  		mapc.put("도우너", "박환희2.png");
  		mapc.put("마이콜", "박환희3.png");
  		
  		request.setCharacterEncoding("UTF-8");
  		String imgName = request.getParameter("peo");
  		
  		String img = mapc.get(imgName);
  		out.print(img);
  	%>
  