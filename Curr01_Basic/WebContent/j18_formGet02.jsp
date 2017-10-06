<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>form으로 입력한 값 넘겨받기</title>
  </head>
  <body>
	
	<h2>form에서 값 넘겨받는 페이지</h2>
	
	<%!
		String name;
		int age;
	%>
	
	<%
		name = request.getParameter("name");
		age = Integer.parseInt(request.getParameter("age"));
	%>
	
	name : <%= name %> <br>
	age : <%= age %> <br>
	
  </body>
</html>