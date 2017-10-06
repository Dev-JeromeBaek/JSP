<%@page import="dto.stuDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	function stuGrade2Func(pageName) {
    		var ff = document.stuGrade2Form;
    		ff.action = "/HW0210/a/" + pageName;
    		ff.method = "post";
    		ff.submit();
    	}
    </script>
    
  </head>
  <body>
	<%
		if(session.getAttribute("tLogin") != null) {
			teaDTO dto = (teaDTO) session.getAttribute("tLogin");
			
			ArrayList<stuDTO> listc = 
				(ArrayList<stuDTO>) request.getAttribute("listc");
			String sname = (String) request.getAttribute("sname");
	%>
	<form name="stuGrade2Form">
	<fieldset style="width: 700px;">
	<legend style="font-size: 50px;">
		[<%= sname %>] 검색 결과
	</legend>
	<p>성적입력할 학생의 이름을 선택 하세요.</p>
		<table border="1" style="text-align: center;">
			<tr>
				<td>번 호</td>
				<td>이 름</td>
				<td>성 별</td>
				<td>학년 / 반</td>
				<td>생년월일</td>
				<td>국 어</td>
				<td>수 학</td>
				<td>영 어</td>
				<td>총 점</td>
				<td>평 균</td>
			</tr>
			<%
			if(listc != null)
			{
				for(stuDTO each : listc)
				{
			%>
				<tr>
					<td><%= each.getSnum() %></td>
					<td>
	<a href="/HW0210/a/insertStuGradePage?snum=<%= each.getSnum() %>">
							<%= each.getSname() %>
						</a>
					</td>
					<td><%= each.getSgender() %></td>
		<td><%= each.getShak() %>학년 / <%= each.getSban() %>반</td>
					<td><%= each.getSbirth() %></td>
					<td><%= each.getKor() %></td>
					<td><%= each.getEng() %></td>
					<td><%= each.getMath() %></td>
					<td><%= each.getTotal() %></td>
					<td><%= each.getAvg() %></td>
				</tr>
			<%
					}
				}
			%>
		</table>
	</fieldset>
	</form>
	<%
		} else {
			out.print("<h3>로그인 후 이용 가능합니다.</h3>");
		}
	%>
  </body>
</html>