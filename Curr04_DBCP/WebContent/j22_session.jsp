<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
// 		세션 호출 방법 2가지
// 		session.

// 		HttpSession svlSession = request.getSession();
	%>
	
	1. 세션 유지 시간 정보 확인(초) : 
		<%= session.getMaxInactiveInterval() %><br>
		
	2. 세션이 최초로 생성된 시간(단위:ms) : 
		<%= session.getCreationTime() %>
		<%= new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(session.getCreationTime()) %><br>
		
	3. 현재 브라우저 화면에서 최초로 생성된 session인지 확인 : 
		<%= session.isNew() %> <br>
		
  </body>
</html>