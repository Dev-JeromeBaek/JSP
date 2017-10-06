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
		j01_jspPage에서 서블릿 s01로 이동(get/post)
	--%>
	
	<a href="/Curr02_Basic/s01">s01서블릿에 접근(get방식)</a> <br>
	
	<form action="/Curr02_Basic/s01">
		<input type="submit" value="s01접근(form-get)">
	</form>
	
	<form action="/Curr02_Basic/s01" method="post">
		<input type="submit" value="s01접근(form-post)">
	</form>
	
  </body>
</html>