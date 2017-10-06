<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  
	<h2>수신페이지(j31)</h2>
	
	<%
		String data1 = request.getParameter("data1");
		String data2 = request.getParameter("data2");
		String data3 = request.getParameter("data3");
		String data4 = request.getParameter("data4");
	%>
	
	data1 : <%= data1 %> <br>
	data2 : <%= data2 %> <br>
	data3 : <%= data3 %> <br>
	data4 : <%= data4 %> <br>
	
  </body>
</html>