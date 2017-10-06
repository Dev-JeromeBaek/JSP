<%@page import="dto.stuDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     <%@ page errorPage="/errorPage.jsp" %> --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  	<%
  		ArrayList<stuDTO> listc = (ArrayList<stuDTO>) request.getAttribute("listc");
  	%>
  	
  	<h2>학생정보 전체보기</h2>
  	
  	<table border="1" align="center" style="text-align: center;">
  		<tr>
  			<td>번 호</td>
  			<td>이 름</td>
  			<td>총 점 </td>
  			<td>평 균</td>
  		</tr>
  	<%
  		if(listc != null)
  			for(stuDTO each : listc)
  			{
  	%>
  		<tr>
  			<td>
  				<a href="/HW0209/stu/selectOne?num=<%= each.getNum() %>">
  					<%= each.getNum() %>
  				</a>
  			</td>
  			<td><%= each.getName() %></td>
  			<td><%= each.getTotal() %></td>
  			<td><%= each.getAvg() %></td>
  		</tr>
  	<%
  			}
  	%>
  	</table>
  </body>
</html>