<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<h2>인사정보 입력</h2>
	
	<form action="/Curr02_Basic/s14" method="post">
		<table>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name">
			</tr>
			<tr>
				<td>나 이</td>
				<td><input type="text" name="age">
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="저장하기">
					<input type="hidden" name="view" value="home">
					<input type="hidden" name="works" value="insertOne">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>