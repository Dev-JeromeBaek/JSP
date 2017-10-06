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
		teaDTO dto = (teaDTO)request.getAttribute("dto");
		session.setAttribute("tLogin", dto);
	%>
	<script type="text/javascript">
		location.href = "/HW0210/a/myInfo";
	</script>
  </body>
</html>