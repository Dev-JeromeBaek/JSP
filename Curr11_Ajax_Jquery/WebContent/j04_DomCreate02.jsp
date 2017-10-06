<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  	<table border="1" style="text-align: center;">
	<%
		Enumeration<String> names = request.getParameterNames();
	
		String msg = "";
		while(names.hasMoreElements()) {
			String paramName = names.nextElement();
			String paramValue = request.getParameter(paramName);
			msg += paramName + " >>>>> " + paramValue + "<br>";
	%>
		<tr>
			<td><%= paramName %></td>
			<td><%= paramValue %></td>
		</tr>
	<%
		}
	%>
	</table>
	<%= msg %>
  </body>
</html>