<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<%
		String mainView = "/j03_mainHome.jsp";
		if(request.getParameter("m") != null) {
			mainView = "/" + request.getParameter("m") + ".jsp";
		}
	%>
	
	<h2>home</h2>
	
	<table border="1" style="width: 100%; height:1000;  text-align: center;">
		<tr style="height: 15%;">
			<td colspan="2">
				<jsp:include page="/j03_top.jsp"/>
			</td>
		</tr>
		<tr style="height: 70%;">
			<td style="width: 20%;">
				<jsp:include page="/j03_left.jsp"/>
			</td>
			<td style="width: 80%;">
				<jsp:include page="<%= mainView %>"/>
			</td>
		</tr>
		<tr style="height: 15%;">
			<td colspan="2">
				<jsp:include page="/j03_bottom.jsp"/>
			</td>
		</tr>
	</table>
  </body>
</html>