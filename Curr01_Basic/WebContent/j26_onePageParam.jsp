<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  
	<h2>현재 페이지에 정보 전달 후 받기</h2>
	<%
		String data = request.getParameter("data");
	%>
	data : <%= data %> <hr>
	<%-- "" 또는 "?"는 현재 페이지로 이동하는 경로임 --%>
	<a href="?data=a태그에서보내기">1. 현재 페이지(j26)로 보내기</a> <hr>
	
	<form action="?">
		data 입력 : <input type="text" name="data"> <br>
		<input type="submit" value="2. 현재 페이지(j26)로 보내기">
	</form>
  </body>
</html>