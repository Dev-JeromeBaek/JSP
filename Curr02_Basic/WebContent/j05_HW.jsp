<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%-- 
		학생 정보 관리 프로그램
		1. 상세 항목 :
			이름, 국어, 영어, 수학, 총점, 평균, 합격결과
		2. 페이지 구성
			j05_HW.jsp : 학생 정보 입력
						 => 서블릿 /s05로 전송
			서블릿 /s05 :
				학생의 총점, 평균, 합격결과 산출 후
				브라무저에 모든 정보 출력
		3. 요구사항
			form - post
	--%>
	
	<form action="./s05" method="post">
		<table>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>국어점수</td>
				<td><input type="text" name="kor"></td>
			</tr>
			<tr>
				<td>영어점수</td>
				<td><input type="text" name="eng"></td>
			</tr>
			<tr>
				<td>수학점수</td>
				<td><input type="text" name="math"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="s05로 전송하기">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>