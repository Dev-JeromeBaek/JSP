<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<%--
		jsp(01) -> 서블릿(redirect/forward) -> jsp(02) / jsp(03)
	--%>
	
	<h2>파라미터 정보를 통한 URL 제어 : 시작페이지</h2>
	
	<h3>redirect로 이동시키는 컨트롤러 s13</h3>
	<a href="/Curr02_Basic/s13?view=j13_view02.jsp">view02로 이동하기</a> <br>
	
	<a href="/Curr02_Basic/s13?view=j13_view03.jsp">view03로 이동하기</a> <br>
	
	<hr>
	
	<h3>forward로 이동시키는 컨트롤러 s13Ex</h3>
	<a href="/Curr02_Basic/s13Ex?view=j13_view02.jsp">view02로 이동하기</a> <br>
	
	<a href="/Curr02_Basic/s13Ex?view=j13_view03.jsp">view03로 이동하기</a> <br>
	
	<hr>
	
  </body>
</html>