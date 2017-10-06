<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>학생 정보 관리 프로그램</title>
  </head>
  <body>
	
	<%!
		String name;
		int kor, eng, math, total;
		double avg;
		String result;
		
		int IntJop(HttpServletRequest request, String title) {
			String in_Val = request.getParameter(title);
			return Integer.parseInt(in_Val);
		}
	%>
	
	
	<%
		request.setCharacterEncoding("UTF-8");
		
		name = request.getParameter("name");
		kor = IntJop(request, "kor");
		eng = IntJop(request, "eng");
		math = IntJop(request, "eng");
		total = kor + eng + math;
		avg = total /3.0;
		
		if(avg >=85.5)
		{
			result = "합격입니다.";
		} else {
			result = "불합격입니다.";
		}
	%>
	
	<h2><%= name %> 학생의 정보</h2>
	
	<table border="2" style="text-align: center;">
		<tr>	
			<td>이 름</td>
			<td><%= name %>
		</tr>
		<tr>	
			<td>국어점수</td>
			<td><%= kor %>
		</tr>
		<tr>	
			<td>영어점수</td>
			<td><%= eng %>
		</tr>
		<tr>	
			<td>수학점수</td>
			<td><%= math %>
		</tr>
		<tr>	
			<td>총 점</td>
			<td><%= total %>
		</tr>
		<tr>	
			<td>평 균</td>
			<td><%= avg %>
		</tr>
		<tr>	
			<td>합격여부</td>
			<td><%= result %>
		</tr>
	</table>
  </body>
</html>