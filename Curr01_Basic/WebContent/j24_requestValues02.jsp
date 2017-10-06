<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>파라미터 이름 한개로 여러값받기</title>
  </head>
  <body>
  
  	<h2>수신 페이지(j24)</h2>
  	
  	<table border="1" style="text-align: center;">
		<tr>
			<td>이 름</td>
			<td>나 이</td>
		</tr>
  
	<%
		request.setCharacterEncoding("UTF-8");
	
		String names[] = request.getParameterValues("name");
		String ages[] = request.getParameterValues("age");
// 		request.getParameterValues(); : 기본적으로 입력한대로 나오지 않으나, 잘나옴..?
		for(int i=0; i<names.length; i++)
		{
	%>
		<tr>
				<td><%= names[i] %></td>
				<td><%= ages[i] %></td>
			</tr>
	<%
		}
	%>
	</table>
  </body>
</html>