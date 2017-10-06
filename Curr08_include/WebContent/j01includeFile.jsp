<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<h2>include file 이용해서 합치기</h2>
	<%--
		각 파일의 소스코드를 복사 붙여넣기 한 후 결과물을 출력
	
	--%>
	
	<table border="1" style="width: 300px; text-align: center;">
		<tr>
			<td><%@ include file="/AAA.jsp" %></td>
		</tr>
		<tr>
			<td><%@ include file="/BBB.jsp" %></td>
		</tr>
		<tr>
			<td>
				aaa : <%= msg %>
			</td>
		</tr>
	</table>
	
  </body>
</html>