<%@page import="dao.HamDAO"%>
<%@page import="dto.HamDTO"%>
<%@page import="java.util.ArrayList"%>
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
		String msg = null;
		request.setCharacterEncoding("UTF-8");
		String searchHam = request.getParameter("searchHam");
		ArrayList<HamDTO> listc = null;
		HamDAO dao = new HamDAO();
		listc = dao.searchHam(searchHam);
		if(listc == null)
		{
			msg = "검색하신 정보는 존재하지 않습니다.";
		}
		if(msg == null)
		{
	%>
		<h2>검색 목록 Page</h2>

		<a href="/HW02/home.jsp">Home</a>
		<br><br>
		
		<form>
			<table border="1" style="text-align: center;">
				<tr>
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
			</table>
		</form>
	<%
		} else {
	%>
		<script type="text/javascript">
			alert("<%= msg %>");
			location.href="/HW02/home.jsp";
		</script>
	<%
		}
	%>
  </body>
</html>