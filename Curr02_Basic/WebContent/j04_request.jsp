<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Servlet</title>
  </head>
  <body>
	<%--
		1. 현재 j04_request.jsp에서 이름과 나이를 입력받음
			from이 두개 => get/post 방식
		2. 서블릿 s04번으로 전송함
		3. 서블릿에서는 이름과 나이를 받아서,
			브라우저 화면에 출력.
	--%>
	
	<form action="/Curr02_Basic/s04" method="get">
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
					<input type="submit" value="get방식 전송하기">
				</td>
			</tr>
		</table>
	</form>
	
	<form action="/Curr02_Basic/s04" method="post">
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
					<input type="submit" value="post방식 전송하기">
				</td>
			</tr>
		</table>
	</form>
	
  </body>
</html>