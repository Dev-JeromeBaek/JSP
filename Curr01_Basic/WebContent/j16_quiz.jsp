<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  	<%-- 
	http://192.168.121.1:8080/Curr01_Basic/j16_quiz.jsp?name=둘리&kor=70&eng=80&math=60
	=> 이 학생의 총점 및 평균을 구한 뒤 모든 정보를 출력하세요
	--%>
	
	<%!
		String name;
		int kor, eng, math, total;
		double avg;
		
	%>
	
	<%
		name = request.getParameter("name");
		kor = Integer.parseInt(request.getParameter("kor"));
		eng = Integer.parseInt(request.getParameter("eng"));
		math = Integer.parseInt(request.getParameter("math"));
		
		total = kor + eng + math;
		avg = total / 3.0;
	%>
	
	<h2>학생정보 프로그램</h2>
	
	<table border="2" style="text-align: center;">
		<tr>
			<td>이름</td>
			<td>국어점수</td>
			<td>영어점수</td>
			<td>수학점수</td>
			<td>총점</td>
			<td>평균</td>
		</tr>
		<tr>
			<td><%= name %></td>
			<td><%= kor %></td>
			<td><%= eng %></td>
			<td><%= math %></td>
			<td><%= total %></td>
			<td><%= avg %></td>
		</tr>
	</table>
	
	
  </body>
</html>