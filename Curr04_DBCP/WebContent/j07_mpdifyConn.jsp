<%@page import="dto.PeopleDTO"%>
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
		String msg = null;
		int num = Integer.parseInt(request.getParameter("num"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		PeopleDTO dto = new PeopleDTO();
		dto.setNum(num);
		dto.setName(name);
		dto.setAge(age);
		
		peopleDAO dao = new peopleDAO();
		int res = dao.modifyOne(dto);
		
		msg = res > 0 ? "수정 완료" : "수정 실패";
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href="/Curr04_DBCP/j06_selectOne.jsp?num=<%= dto.getNum() %>"
	</script>
  </body>
</html>