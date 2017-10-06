<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Restful API설계</title>
  </head>
  <body>
	<%--
		1. 프로젝트 생성 : HW03 + @
		2. dbcp, MVC2, restful
		3. 원하는 정보 관리 프로그램
		4. 상세 항목 : 이름, 가격, 칼로리, ...
		5. 기능
			1. 입력
			2. 목록보기
			3. 상세보기
			4. 수정 / 삭제 하기
	--%>
	<h2>인사 정보 입력</h2>
	
	<form action="/Curr07_MVC2_Restful/peo/insertOne" method="post">
		<table border="1" style="text-align: center;">
			<tr>
			<td colspan="2">
					<a href="/Curr07_MVC2_Restful/peo/selectList">
						인사정보목록
					</a>
			</td>
			</tr>
			<tr>
			<td>이 름</td>
			<td>
				<input type="text" name="name">
			</td>
			</tr>
			<tr>
			<td>나 이</td>
			<td>
				<input type="text" name="age">
			</td>
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