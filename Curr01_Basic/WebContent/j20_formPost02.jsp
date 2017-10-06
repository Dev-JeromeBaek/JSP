<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>form의 Post방식 이용하기</title>
  </head>
  <body>
  
  	<%-- 
  		form의 post방식 이용 시 한글 사용 불가능
  		=> 인코딩이 필요함
  		=> request를 이용하기 전, 인코딩 명령 필요
  	--%>
	
	<%
		// @@순서 중요함! 인코딩 설정을 먼저하고 적용시켜야함!!@@
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		String age = request.getParameter("age");
	%>
	
	<table border="1" style="text-align: center;">
		<tr>
			<td>이 름</td>
			<td><%= name %></td>
		</tr>
		<tr>
			<td>나 이</td>
			<td><%= age %></td>
		</tr>
	</table>
	
	<h2></h2>
	
  </body>
</html>