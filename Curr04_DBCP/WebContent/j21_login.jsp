<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<h2>로그인하기</h2>
	
	<form action="/Curr04_DBCP/j21_login02.jsp" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="pw"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인하기">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>