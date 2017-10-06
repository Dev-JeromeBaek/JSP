<%@page import="dao.hpDAO"%>
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
		System.out.println("BB : " + num);
		int res = new hpDAO().deleteFurn(num);
		msg = res > 0 ? "삭제 완료" : "삭제 실패";
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		if("<%= res %>" != 0)
		{
			location.href="/Curr05_FilePage/j06_selectFurnList.jsp?num=<%= num %>";
		} else {
			location.href="/Curr05_FilePage/j06_selectFurnOne.jsp?num<%= num %>";
		}
	</script>
  </body>
</html>