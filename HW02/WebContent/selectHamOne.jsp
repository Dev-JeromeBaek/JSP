<%@page import="dao.HamDAO"%>
<%@page import="dto.HamDTO"%>
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
    <script type="text/javascript">
    	function goPage(pageName)
    	{
    		var frm = document.selectHamOneForm;
    		frm.action = "/HW02/"+pageName+".jsp";
    		frm.method = "post";
    		frm.submit();
    	}
    </script>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		HamDAO dao = new HamDAO();
		HamDTO dto = dao.selectOne(num);
	%>
	
	<h2>햄버거 상세 보기</h2> 

	<a href="/HW02/home.jsp">Home</a>
	<br><br>
	
	<form name="selectHamOneForm">
		<table border="1" style="text-align: center;">
		
			<tr>
				<td>번 호</td>
				<td><%= dto.getNum() %>
			</tr>
			<tr>
				<td>햄버거 이름</td>
				<td><%= dto.getNameHam() %></td>
			</tr>
			<tr>
				<td>브랜드 이름</td>
				<td><%= dto.getBrandHam() %></td>
			</tr>
			<tr>
				<td>가 격(원)</td>
				<td><%= dto.getPriceHam() %>원</td>
			</tr>
			<tr>
				<td>칼로리(kcal)</td>
				<td><%= dto.getKcalHam() %>kcal</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="목록보기"
							onclick="goPage('selectHamList')">
					<input type="button" value="수정하기"
							onclick="goPage('updateHamOne')">
					<input type="button" value="삭제하기"
							onclick="goPage('deleteHamList')">
					<input type="hidden" name="num" 
							value="<%= dto.getNum() %>">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>