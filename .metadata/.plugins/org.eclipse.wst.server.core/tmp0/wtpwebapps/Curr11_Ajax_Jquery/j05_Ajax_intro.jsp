<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		String corpMenu = "";
		String bizMenu = "";
		String param = request.getParameter("param");
		if(param != null && param.equals("corp")) {
			corpMenu = "1. 인사말<br>2. 회사연혁<br>3. 오시는 길";
		}
		if(param != null && param.equals("biz")) {
			bizMenu = "1. 상품보기<br>2. 온라인마켓<br>";
		}
	%>
	
	<table>
		<tr>
			<td><a href="?">Home</a></td>
			<td><a href="?param=corp">회사소개</a></td>
			<td><a href="?param=biz">상품소개</a></td>
		</tr>
		<tr>
			<td></td>
			<td><%= corpMenu %></td>
			<td><%= bizMenu %></td>
		</tr>
	</table>
	
	
  </body>
</html>