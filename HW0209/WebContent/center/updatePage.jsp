<%@page import="dto.stuDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	function updateFunc(pageName) {
    		var ff = document.updateOneForm;
    		ff.action = "/HW0209/stu/" + pageName;
    		ff.method = "post";
    		ff.submit();
    	}
    </script>
  </head>
  <body>
	<%
		stuDTO dto = (stuDTO) request.getAttribute("dto");
	%>
	
	<form name="updateOneForm">
		<table border="1" align="center" style="text-align: center;">
			<tr>
				<td>번 호</td>
				<td><%= dto.getNum() %></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name"
						placeholder="<%= dto.getName() %>">
				</td>
			</tr>
			<tr>
				<td>국어점수</td>
				<td><input type="text" name="kor"
						placeholder="<%= dto.getKor() %>">
			</tr>
			<tr>
				<td>영어점수</td>
				<td><input type="text" name="eng"
						placeholder="<%= dto.getEng() %>">
				</td>
			</tr>
			<tr>
				<td>수학점수</td>
				<td><input type="text" name="math"
						placeholder="<%= dto.getMath() %>">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="수정취소" onclick="updateFunc('selectOne')">
					<input type="button" value="수정내용저장" onclick="updateFunc('updateOne')">
					<input type="hidden" name="num" value="<%= dto.getNum() %>">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>