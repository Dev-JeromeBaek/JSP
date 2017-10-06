<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>form의 Post방식 이용하기</title>
  </head>
  <body>
	<h2>form 태그의 post 방식 전송 : 전송페이지</h2>
	
	<form action="/Curr01_Basic/j20_formPost02.jsp" method="post">
		
		<table border="1" style="text-align: center;">
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name" autocomplete="on"></td>
			</tr>
			<tr>
				<td>나 이</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송하기"></td>
			</tr>
		</table>
	</form>
  </body>
</html>