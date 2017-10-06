<%@page import="dto.PeopleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<h2>전송페이지</h2>
	
	<%
		PeopleDTO dto = new PeopleDTO();
		dto.setName("또치");
		dto.setAge(12);
		request.setAttribute("dto", dto);
	%>
	
	<jsp:forward page="/j05_EL_forward02.jsp"/>
  </body>
</html>