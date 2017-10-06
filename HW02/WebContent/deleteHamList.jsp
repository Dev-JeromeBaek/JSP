<%@page import="dto.HamDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.HamDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <style type="text/css">
    body {
		margin-top: 100px;
		margin-left: 100px;
		width: 70%;
	}
    </style>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		String del = "del";
		HamDAO dao = new HamDAO();
		ArrayList<HamDTO> listc = dao.selectList(null, del);
	%>
	
	<h2>햄버거 정보 삭제</h2>

	<a href="/HW02/home.jsp">Home</a>
	<br><br>
	
	<form action="/HW02/deleteHamConn.jsp" method="post">
		<table border="1" style="text-align: center;">
			<tr>
				<td colspan="6">
					<a href="/HW02/deleteHamList.jsp">선택초기화</a>
					<a href="/HW02/selectHamList.jsp">목록보기</a>
				</td>
			</tr>
			<tr>
				<td>선 택</td>
				<td>번 호</td>
				<td>햄버거 이름</td>
				<td>브랜드 이름</td>
				<td>가 격(원)</td>
				<td>칼로리(kcal)</td>
			</tr>
	<%
			if(listc != null)
			{
				for(HamDTO each : listc)
				{
	%>
				<tr>
					<td>
						<input type="checkbox" name="deleteHam" 
								value="<%= each.getNum() %>">
					</td>
					<td>
						<a href="/HW02/selectHamOne.jsp?num=<%= each.getNum() %>">
							<%= each.getNum() %>
						</a>
					</td>
					<td><%= each.getNameHam() %></td>
					<td><%= each.getBrandHam() %></td>
					<td><%= each.getPriceHam() %></td>
					<td><%= each.getKcalHam() %></td>
				</tr>
	<%
				}
			}
	%>
			<tr>
				<td colspan="6">
					<input type="submit" value="선택삭제">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>