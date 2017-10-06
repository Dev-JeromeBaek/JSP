<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    function goHome() {
    	var frm = document.frm;
    	frm.action = "/Curr01_Basic/j34_HW21.jsp";
    	frm.method = "post";
    	frm.submit();
    }
    
    function result() {
    	var frm = document.frm;
    	frm.action = "/Curr01_Basic/j34_HW23.jsp";
    	frm.method = "post";
    	frm.submit();
    }
    
    </script>
  </head>
  <body>
  
	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		int total = kor + eng + math;
		double avg = total / 3.0;
		String result;
		if(avg >= 85.5)
		{
			result = "합격입니다.";
		} else {
			result = "불합격입니다.";
		}
	%>
  
  	<form name="frm">
		<table>
			<tr>
				<td>이 름</td>
				<td><%= name %>
			</tr>
			<tr>
				<td>국어 점수</td>
				<td><%= kor %>
			</tr>
			<tr>
				<td>영어 점수</td>
				<td><%= eng %>
			</tr>
			<tr>
				<td>수학 점수</td>
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
				<td colspan="2">
					<input type="hidden" name="name" value="<%= name %>">
					<input type="hidden" name="kor" value="<%= kor %>">
					<input type="hidden" name="eng" value="<%= eng %>">
					<input type="hidden" name="math" value="<%= math %>">
					<input type="button" value="입력 페이지 이동" 
							onclick="javascript:goHome()">
					<input type="button" value="결과 페이지 이동" 
							onclick="javascript:result()">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>