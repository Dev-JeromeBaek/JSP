<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		RequestDispatcher rd = request.getRequestDispatcher("/s12");
		rd.forward(request, response);
	%>
<%-- 		<jsp:forward page="/s12"/> --%>
  </body>
</html>