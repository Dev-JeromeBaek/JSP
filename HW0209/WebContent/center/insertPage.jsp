<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     <%@ page errorPage="/errorPage.jsp" %> --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	function insertFunc(pageName) {
    		var ff = document.insertPageForm;
    		ff.action = "/HW0209/stu/" + pageName;
    		ff.method = "post";
    		ff.submit();
    	}
    </script>
  </head>
  <body>
  
  	<h2>학생 정보 입력</h2>
  
	<form name="insertPageForm">
		<table border="1" style="text-align: center;" align="center">
			<tr>
				<td>이름</td>
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
					<input type="button" value="입력취소" onclick="insertFunc('home')">
					<input type="button" value="저장하기" onclick="insertFunc('insertOne')">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>