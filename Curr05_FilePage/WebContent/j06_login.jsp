<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <style type="text/css">
    body {
		margin-top: 100px;
		margin-left: 100px;
		width: 70%;
	}
    </style>
  </head>
  <body>
	
	<h2>Furniture Shop(Login)</h2>
	
	<form action="/Curr05_FilePage/j06_loginSession.jsp" method="post">
		<fieldset style="width: 300px;">
		<legend>Login</legend>
		<table style="text-align: center;">
			<tr>
				<td>아이디 </td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호 </td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: right;">
					<input type="submit" value="로그인">
				</td>
			</tr>
		</table>
		</fieldset>
	</form>
  </body>
</html>