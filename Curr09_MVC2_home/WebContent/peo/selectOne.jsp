<%@page import="dto.PeopleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		PeopleDTO dto = (PeopleDTO)request.getAttribute("dto");
	%>
	<table border="1" style="text-align: center;" align="center">
		<tr>
			<td>번 호</td>
			<td><%= dto.getNum() %>
		</tr>
		<tr>
			<td>이 름</td>
			<td><%= dto.getName() %></td>
		</tr>
		<tr>
			<td>나 이</td>
			<td><%= dto.getAge() %></td>
		</tr>
	</table>
  </body>
</html>