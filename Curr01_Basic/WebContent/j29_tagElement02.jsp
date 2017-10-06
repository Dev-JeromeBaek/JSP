<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  
  	<%
  		request.setCharacterEncoding("UTF-8");
  	
  		String gender = request.getParameter("gender");
  		String email = request.getParameter("email");
  		String[] hobby = request.getParameterValues("hobby");
  		String orgMemo = request.getParameter("memo");
  		String editMemo = orgMemo.replaceAll("\n", "<br>");
  		String newMemo = request.getParameter("memo").replaceAll("\n", "<br>");
  	%>
  
	<h2>입력 결과 화면</h2>
	
	<table border="1" style="text-align: center;">
		<tr>
			 <td>성 별</td>
			 <td><%= gender %></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><%= email %></td>
		</tr>
		<tr>
			<td>취 미</td>
			<td>
				<%
					for(String each : hobby)
					{
				%>
						<%= each %>&nbsp;
				<%
					}
				%>
			</td>
		</tr>
		<tr>
			<td>orgMemo</td>
			<td><%= orgMemo %></td>
		</tr>
		<tr>
			<td>editMemo</td>
			<td><%= editMemo %></td>
		</tr>
		<tr>
			<td>newMemo</td>
			<td><%= newMemo %></td>
		</tr>
	</table>
  </body>
</html>