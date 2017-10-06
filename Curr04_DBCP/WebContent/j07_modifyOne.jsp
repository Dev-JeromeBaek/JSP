<%@page import="dao.peopleDAO"%>
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
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		peopleDAO dao = new peopleDAO();
		PeopleDTO dto = dao.selectOne(num);
	%>
	
	<h2>인사 정보 수정 하기</h2>
	<form action="/Curr04_DBCP/j07_mpdifyConn.jsp" method="post">
		<table>
			<tr>
				<td>번 호</td>
				<td><input type="text" name="num" value="<%= dto.getNum() %>"></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name" placeholder="<%= dto.getName() %>"></td>
			</tr>
			<tr>
				<td>나 이</td>
				<td><input type="text" name="age" placeholder="<%= dto.getAge() %>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="reset" value="다시쓰기">
					<input type="submit" value="내용저장하기">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>