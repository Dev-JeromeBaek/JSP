<%@page import="entity.People"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    function goHome() {
    	location.href = "/Curr02_Basic/s14?works=move&view=home";
    }
    </script>
  </head>
  <body>
	<%
		People peo = (People)request.getAttribute("peo");
	%>
	
	<table>
		<tr>
			<td>이 름</td>
			<td><%= peo.getName() %>
		</tr>
		<tr>
			<td>나 이</td>
			<td><%= peo.getAge() %>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="홈으로가기" onclick="javascript:goHome()">
			</td>
		</tr>
	</table>
  </body>
</html>