<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
	    function input() {
			var frm = document.frm;
			frm.action = "/Curr01_Basic/j33_quiz01.jsp";
			frm.method = "post";
			frm.submit();
		}
	
		function result() {
			var frm = document.frm;
			frm.action = "/Curr01_Basic/j33_quiz02.jsp";
			frm.method = "post";
			frm.submit();
		}
    </script>
  </head>
  <body>
	<h2>할인 대상 여부 판단 결과 화면</h2>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String hidData = request.getParameter("hidData");
	%>
	<form name="frm">
		<table>
			<tr>
				<td><%= hidData %></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="hidden" name="name" value="<%= name %>">
					<input type="hidden" name="age" value="<%= age %>">
					<input type="hidden" name="hidData" value="<%= hidData %>">
					
					<input type="button" value="입력 화면으로 이동"
							onclick="javascript:input()">
					<input type="button" value="입력 결과 출력 화면으로 이동"
							onclick="javascript:result()">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>