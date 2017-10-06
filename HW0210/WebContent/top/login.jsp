<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		int logCheck = (int)request.getAttribute("log");
		teaDTO dto = (teaDTO)request.getAttribute("dto");
		System.out.println("AA : " + dto.getTname());
		if(logCheck == 1) session.setAttribute("tLogin", dto);
	%>
	<script type="text/javascript">
		location.href = "/HW0210/a/loginOk";
	</script>
  </body>
</html>