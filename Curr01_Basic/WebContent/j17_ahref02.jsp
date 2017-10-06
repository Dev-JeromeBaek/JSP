<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>ahref 값 넘기고 받기(Rcv Page)</title>
  </head>
  <body>
	
	<h2>a 태그 : 수신페이지</h2>
	<%!
		String id;
		String pw;
		String name;
	%>
	
	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
	%>
	
	id : <%= id %> <br>
	pw : <%= pw %> <br>
	name : <%= name %> <br>
	
  </body>
</html>