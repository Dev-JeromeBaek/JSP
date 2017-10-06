<%@page import="dao.HamDAO"%>
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
		String[] deleteHam = request.getParameterValues("deleteHam");
		HamDAO dao = new HamDAO();
		msg = dao.deleteList(deleteHam);
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		if("<%= msg %>" == "삭제 완료")
		{
			location.href="/HW02/selectHamList.jsp";
		} else {
			location.href="/HW02/deleteHanList.jsp";
		}
	</script>
  </body>
</html>