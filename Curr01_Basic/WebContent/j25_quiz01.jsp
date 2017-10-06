<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Quiz getValues()이용하기</title>
  </head>
  <body>
	<%--
		학생 정보 관리 프로그램
		=> 5명
		=> 모든 정보를 입력하지 않았어도
			문제가 발생되지 않도록 작성할 것
	--%>
	
	<h2>학생 정보 관리 프로그램 (입력 페이지)</h2>
	
	<form action="/Curr01_Basic/j25_quiz02.jsp" method="get">
		<table border="1" style="text-align: center;">
			<tr>
				<td>이 름</td>
				<td>국어점수</td>
				<td>영어점수</td>
				<td>수학점수</td>
			</tr>
			
			<%
				for(int i=0; i<5; i++)
				{
			%>
				<tr>
					<td><input type="text" name="name" value="" autofocus="autofocus"></td>
					<td><input type="text" name="kor" value="0"></td>
					<td><input type="text" name="eng" value="0"></td>
					<td><input type="text" name="math" value="0"></td>
				</tr>
			<%
				}
			%>
			<tr>
				<td colspan="4"><input type="submit" value="전송하기"></td>
			</tr>
		</table>
	</form>
  </body>
</html>