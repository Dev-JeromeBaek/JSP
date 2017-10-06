<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>값 여러개 받아와서 뽑기</title>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String[] names = new String[5];
		String[] ages = new String[5];
		
		for(int i=0; i<names.length; i++)
		{
			names[i] = request.getParameter("name" + i);
			ages[i] = request.getParameter("age" + i);
		}
	%>
	
	<table border="1" style="text-align: center;">
		<tr>
			<td>이 름</td>
			<td>나 이</td>
		</tr>
		<%
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