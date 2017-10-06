<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Servlet</title>
  </head>
  <body>
	
	<h2>JSP에서 서블릿으로 이동하기 : 전송페이지</h2>
	<%--
		j02_jspPage에서 서블릿 s02로 이동(get/post)
	--%>
	
	<a href="/Curr02_Basic/s02">s02서블릿에 접근(get방식)</a> <br>
	
	<form action="/Curr02_Basic/s02">
		<input type="submit" value="s02접근(form-get)">
	</form>
	
	<form action="/Curr02_Basic/s02" method="post">
		<input type="submit" value="s02접근(form-post)">
	</form>
	
  </body>
</html>