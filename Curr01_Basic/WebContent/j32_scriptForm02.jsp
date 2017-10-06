<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Java Script</title>
  </head>
  <body>
	<h2>수신페이지(j32)</h2>
	
	<%
		request.setCharacterEncoding("UTF-8");
		String frmData = request.getParameter("frmData");
		String param = request.getParameter("param");
		String hidData = request.getParameter("hidData");
	%>
	
	frmData : <%= frmData %> <br>
	<hr>
	param : <%= param %> <br>
	<hr>
	hidData : <%= hidData %> <br>
	<hr>
	
  </body>
</html>