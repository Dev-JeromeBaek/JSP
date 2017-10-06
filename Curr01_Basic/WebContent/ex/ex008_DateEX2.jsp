<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		String dd = request.getParameter("dd");
	%>
	<form action="/Curr01_Basic/ex008_DateEX3.jsp">
		<p>
			<input type="date" name="dd" value="<%= dd %>">
			<input type="submit" value="gogo">
		</p>
	</form>
  </body>
</html>