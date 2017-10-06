<%@page import="dto.PeopleDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		ArrayList<PeopleDTO> listc = (ArrayList)request.getAttribute("listc");
	%>
	
	<table border="1" style="text-align: center;" align="center">
		<tr>
			<td>번 호</td>
			<td>이 름</td>
			<td>나 이</td>
		</tr>
		<%
			if(listc != null)
				for(PeopleDTO each : listc) {
		%>
				<tr>
					<td>
						<a href="/Curr09_MVC2_home/ppp/selectOne
							?num=<%= each.getNum() %>">
									<%= each.getNum() %>
						</a>
					</td>
					<td><%= each.getName() %></td>
					<td><%= each.getAge() %></td>
				</tr>
		<%
				}
		%>
	</table>
  </body>
</html>