<%@page import="jdk.nashorn.internal.ir.RuntimeNode.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		String name = request.getParameter("name");
		String rcv = request.getParameter("mp");
		int mp = IntJop(request, "mp");
		rcv = request.getParameter("kp");
		int kp = Integer.parseInt(rcv);
		rcv = request.getParameter("bp");
		int bp = Integer.parseInt(rcv);
		
		int total = mp + kp + bp;
	%>
	
	<%!
		int IntJop(HttpServletRequest request, String title) {
		String in_Val = request.getParameter(title);
		return Integer.parseInt(in_Val);
	}
	%>
	
	
	<h2>컴퓨터 정보 결과</h2>
	
	<table>
		<tr>
			<td>이 름</td>
			<td><%= name %></td>
		</tr>
		<tr>
			<td>모니터 </td>
			<td><%= mp %></td>
		</tr>
		<tr>
			<td>본 체</td>
			<td><%= bp %></td>
		</tr>
		<tr>
			<td>모니터</td>
			<td><%= mp %></td>
		</tr>
		<tr>
			<td>총구매가격</td>
			<td><%= total %></td>
		</tr>
	</table>
  </body>
</html>