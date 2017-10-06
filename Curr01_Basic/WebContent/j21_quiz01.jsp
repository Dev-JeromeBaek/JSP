<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>학생 정보 관리 프로그램</title>
  </head>
  <body>
	<%--
		문제 : 학생 정보 관리 프로그램
		1. 상세 항목
			- 이름, 국어, 영어, 수학, 총점, 평균
				합격/불합격(평균85.5이상 기준)
		2. 입력 항목
			- 이름 및 각 과목 성적
		3. 요구사항
			form(post) && table
	--%>
	
	<h2>학생 정보 관리 프로그램</h2>
	
	<form action="/Curr01_Basic/j21_quiz02.jsp" method="post">
		<table border="2" style="text-align: center;" >
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name" autocomplete="on">
			</tr>
			<tr>
				<td>국어점수</td>
				<td><input type="text" name="kor" autocomplete="on">
			</tr>
			<tr>
				<td>영어점수</td>
				<td><input type="text" name="eng" autocomplete="on">
			</tr>
			<tr>
				<td>수학점수</td>
				<td><input type="text" name="math" autocomplete="on">
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="데이터 전송하기"></td>
			</tr>
		</table>
	</form>
  </body>
</html>