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
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		
		peopleDAO dao = new peopleDAO();
		int res = dao.deleteOne(num);
		msg = res > 0 ? "삭제 완료" : "삭제 실패";
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		if("<%= res %>" != 0)
		{
			location.href = "/Curr04_DBCP/j05_selectList.jsp";
		} else {
			location.href = "/Curr04_DBCP/j06_selectOne.jsp";
		}
	</script>
  </body>
</html>