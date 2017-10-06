<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>form이용 quiz</title>
  </head>
  <body>
	<%-- 
		문제 : 컴퓨터 정보 관리 프로그램
		1. 입력 상세 항목
			- 이름, 키보드-본체-모니터 가격, 총 구매가격
		2. 입력 항목
			- 이름 및 각 부품의 가격
		3. 요구사항
			form(Get) && table
	--%>
	<h1>컴퓨터 정보 관리 프로그램</h1>
	
	<form action="/Curr01_Basic/j19_quiz02.jsp">
		
		<table>
			<tr>
				<td>컴퓨터 이름</td>
				<td><input type="text" name="comName"></td>
			</tr>
			<tr>
				<td>키보드 가격</td>
				<td><input type="text" name="keyPrice"></td>	
			</tr>
			<tr>
				<td>본체 가격</td>
				<td><input type="text" name="bodyPrice"></td>
			</tr>
			<tr>
				<td>모니터 가격</td>
				<td><input type="text" name="displayPrice"></td>
			</tr>
			<tr>
				<td><input type="submit" value="입력값 전송하기"></td>
			</tr>	
		</table>
	</form>
  </body>
</html>