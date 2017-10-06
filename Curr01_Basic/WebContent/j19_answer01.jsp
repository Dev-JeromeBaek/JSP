<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<h2>컴퓨터 정보 입력</h2>
	
	<form action="/Curr01_Basic/j19_answer02.jsp" method="get"></form>
		<table border="1" style="text-align: center;">
			<tr>
				<td>이 름</td>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>키보드 가격</td>
				<td>
					<input type="text" name="kp">
				</td>
			</tr>
			<tr>
				<td>본체 가격</td>
				<td>
					<input type="text" name="bp">
				</td>
			</tr>
			<tr>
				<td>모니터 가격</td>
				<td>
					<input type="text" name="mp">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="전송하기">
					<input type="reset" value="다시쓰기">
			</tr> 
		</table>
  </body>
</html>