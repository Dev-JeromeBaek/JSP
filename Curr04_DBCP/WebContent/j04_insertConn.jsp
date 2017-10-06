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
		String msg = null;
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		PeopleDTO dto = new PeopleDTO(name, age);
		
		peopleDAO dao = new peopleDAO();
		int res = dao.insertOne(dto);
		msg = res > 0 ? "저장 완료" : "저장 실패";
		
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href = "/Curr04_DBCP/j05_selectList.jsp";
	</script>
  </body>
</html>