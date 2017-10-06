<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>ReDirect</title>
  </head>
  <body>
	<h2>redirect02 : 중간 페이지</h2>
	1. 입력된 주소로 자동 이동하며, URL에 입력된 주소가 노출됨
	2. 중간페이지에 도착한 파라미터 정보를
		도착페이지로 자동 전송하지 않는다.
		
	페이지 이동용이다!!! attribute XXXXX
		
	<%
		response.sendRedirect("/Curr02_Basic/j08_redirect03.jsp");
	%>
	
	여기서 만든 파라미터 값은 3번페이지에 이동 한다.
  </body>
</html>