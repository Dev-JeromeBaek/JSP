<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  
  	<form name="frm">
		<table>
			<tr>
				<td>이 름</td>
				<td>국어 점수</td>
				<td>영어 점수</td>
				<td>수학 점수</td>
				<td>총 점</td>
				<td>평 균</td>
			</tr>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String[] names = request.getParameterValues("name");
		String[] kors = request.getParameterValues("kor");
		String[] engs = request.getParameterValues("engs");
		String[] maths = request.getParameterValues("math");
		String[] totals = request.getParameterValues("total");
		String[] avgs = request.getParameterValues("avg");
		String[] results = request.getParameterValues("result");
		
		for(int i=0; i<names.length; i++)
		{
	%>
			<tr>
				<td><%= names[i] %></td>
				<td><%= kors[i] %></td>	
				<td><%= engs[i] %></td>
				<td><%= maths[i] %></td>
				<td><%= totals[i] %></td>
				<td><%= avgs[i] %></td>
			</tr>
	<%
		}
	%>
		</table>
	</form>
  </body>
</html>