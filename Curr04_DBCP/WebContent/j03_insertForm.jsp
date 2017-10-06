<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  	
	<h2>인사 정보 입력</h2>
	
	<form action="/Curr04_DBCP/j04_insertConn.jsp" method="post">
		<table border="1" style="text-align: center;">
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>나 이</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="저장하기">
				</td>
			</tr>
		</table>
	</form>
	
  </body>
</html>