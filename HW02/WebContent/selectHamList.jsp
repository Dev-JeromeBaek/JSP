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
		String sortHamList = "newSo";
		ArrayList<HamDTO> listc = null;
		if(sortHamList != null)
		{
			sortHamList = request.getParameter("sortHamList");
			HamDAO dao = new HamDAO();
			listc = dao.selectList(sortHamList, null);
		}
	%>
	<h2>햄버거 목록 보기</h2>

	<a href="/HW02/home.jsp">Home</a>
	<br><br>
	
	<form>
		<table border="1" style="text-align: center;">
			<tr>
  				<td colspan="5" style="text-align: right;">
  					<a style="font-size: 12px;" 
  						href = "/HW02/selectHamList.jsp?sortHamList=newSo">
  						 최신순</a>
  					<a style="font-size: 12px;" 
  						href = "/HW02/selectHamList.jsp?sortHamList=coHiSo">
  						 가격높은순</a>
  					<a style="font-size: 12px;" 
  						href = "/HW02/selectHamList.jsp?sortHamList=coLoSo">
  						가격낮은순</a>
  					<a style="font-size: 12px;" 
  						href = "/HW02/selectHamList.jsp?sortHamList=calHiSo">
  						칼로리 높은순</a>
  					<a style="font-size: 12px;" 
  						href = "/HW02/selectHamList.jsp?sortHamList=calLoSo">
  						칼로리 낮은순</a>&nbsp;&nbsp;
  					<a style="font-size: 20px;" 
  						href = "/HW02/insertHamOne.jsp">
  						 추가입력하기</a>
  				</td>
  			</tr>
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
					<td><%= each.getPriceHam() %>원</td>
					<td><%= each.getKcalHam() %>kcal</td>
				</tr>
	<%
				}
			}
	%>
		</table>
	</form>
  </body>
</html>