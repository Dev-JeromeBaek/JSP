<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%!
		String comName;
		int keyPrice, bodyPrice, displayPrice, totalPrice;
	%>
	
	<%
		comName = request.getParameter("comName");
		keyPrice = Integer.parseInt(request.getParameter("keyPrice"));
		bodyPrice = Integer.parseInt(request.getParameter("bodyPrice"));
		displayPrice = Integer.parseInt(request.getParameter("displayPrice"));
		
		totalPrice = keyPrice + bodyPrice + displayPrice;
	%>
	
	<div>
		<table border="3">
			<tr>
				<td>컴퓨터이름</td>
				<td><%= comName %>
			</tr>
			<tr>
				<td>키보드가격</td>
				<td><%= keyPrice %>
			</tr>
			<tr>
				<td>본체가격</td>
				<td><%= bodyPrice %>
			</tr>
			<tr>
				<td>모니터가격</td>
				<td><%= displayPrice %>
			</tr>
			<tr>
				<td>총구매가격</td>
				<td><%= totalPrice %>
			</tr>
		</table>
	</div>
	
  </body>
</html>