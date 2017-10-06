<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		session.setAttribute("mmm", "세션에 저장할 메시지");
		
		session.setAttribute("nnn", 1111);
		
		ArrayList<String> listc = new ArrayList();
		listc.add("가나다라");
		listc.add("1234");
		listc.add("abcde");
		session.setAttribute("listc", listc);
		
// 		세선의 정보 유지 시간 설정(단취 : 초)
		session.setMaxInactiveInterval(10);
	%>
	
	<h2>세션에 정보를 저장하였습니다.</h2>
  </body>
</html>