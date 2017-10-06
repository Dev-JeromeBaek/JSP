<%@page import="dto.PeopleDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.peopleDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  	
  	<%
  		peopleDAO dao = new peopleDAO();
  		ArrayList<PeopleDTO> listc = dao.selectList();
  	%>
  	
	<h2>인사 정보 목록 보기</h2>
	
	<form>
		<table border="1" style="text-align: center;">
			<tr>
				<td>번 호</td>
				<td>이 름</td>
				<td>나 이</td>
			</tr>
			
	<%
			if(listc != null) 
			{
				for(PeopleDTO each : listc)
				{
	%>
				<tr>
					<td><a href=/Curr04_DBCP/j06_selectOne.jsp?num=<%= each.getNum() %>><%= each.getNum() %></a></td>
					<td><%= each.getName() %></td>
					<td><%= each.getAge() %></td>
				</tr>
	<%
				}
			}
	%>		
		</table>
	</form>
	
	
  </body>
</html>