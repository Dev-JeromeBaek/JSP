<%@page import="dto.stuDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	function selectOneFunc(pageName) {
    		var ff = document.selectOneForm;
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
	
	<form name="selectOneForm">
		<table border="1" align="center" style="text-align: center;">
			<tr>
				<td>번 호</td>
				<td><%= dto.getNum() %></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><%= dto.getName() %></td>
			</tr>
			<tr>
				<td>국어점수</td>
				<td><%= dto.getKor() %></td>
			</tr>
			<tr>
				<td>영어점수</td>
				<td><%= dto.getEng() %></td>
			</tr>
			<tr>
				<td>수학점수</td>
				<td><%= dto.getMath() %></td>
			</tr>
			<tr>
				<td>총 점</td>
				<td><%= dto.getTotal() %></td>
			</tr>
			<tr>
				<td>평 균</td>
				<td><%= dto.getAvg() %></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="목록보기" 
							onclick="selectOneFunc('selectListPage')">
					<input type="button" value="수정하기" 
							onclick="selectOneFunc('updatePage')">
					<input type="button" value="삭제하기" 
							onclick="selectOneFunc('deleteOne')">
					<input type="hidden" name="num" value="<%= dto.getNum() %>">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>