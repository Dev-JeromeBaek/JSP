<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>@@form의 Hidden 정보 받기페이지@@</title>
  </head>
  <body>
  	<%
  		request.setCharacterEncoding("UTF-8");
  	
  		String works = request.getParameter("works");
  		String name = request.getParameter("name");
  		String age = request.getParameter("age");
  	%>
  	<h2>수신 페이지 (j22)</h2>
  	
  	works : <%= works %> <br>
  	name : <%= name %> <br>
  	age : <%= age %> <br>
  	
  </body>
</html>