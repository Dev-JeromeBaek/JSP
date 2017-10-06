<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>많은 값 넘겨주기</title>
  </head>
  <body>
  
	<h2>인사 정보 입력 : 전송페이지</h2>
	
	<form action="/Curr01_Basic/j23_requestValues02.jsp" method="post">
		<table border="1" style="text-align: center;">
			<tr>
				<td>이 름</td>
				<td>나 이</td>
			</tr>
			<%
				for(int i=0; i<5; i++)
				{
			%>
				<tr>
					<td><input type="text" name="name<%= i %>"></td>
					<td><input type="text" name="age<%= i %>"></td>
				</tr>
			<%
				}
			%>
			<tr>
				<td><input type="submit" value="전송하기"></td>
			</tr>
		</table>
	</form>
  </body>
</html>