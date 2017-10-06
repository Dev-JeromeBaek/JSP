<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<h2>include Page를 이용해서 합치기</h2>	
	<%--
		각 화면의 출력 결과를 합치는 기술
	--%>
	<table border="1" style="width: 300px; text-align: center;">
		<tr>
			<td><jsp:include page="/AAA.jsp"/></td>
		</tr>
		<tr>
			<td><jsp:include page="/BBB.jsp"/></td>
		</tr>
		<tr>
			<td>
<%-- 				aaa : <%= msg %> --%>
			</td>
		</tr>
	</table>
  </body>
</html>