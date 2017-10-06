<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  	
	<h2>테이블 입력값 가져오기!</h2>
  	<table border="1" style="text-align: center;">
		<tr>
			<td>이 름</td>
			<td>나 이</td> 
		</tr>
  	<%
  		request.setCharacterEncoding("UTF-8");
  	
  		String[] names = request.getParameterValues("name");
  		String[] ages = request.getParameterValues("age");
  		
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