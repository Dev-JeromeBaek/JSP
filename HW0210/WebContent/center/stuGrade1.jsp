<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	function stuGradeFunc(pageName) {
    		var ff = document.stuGradeForm;
    		ff.action = "/HW0210/a/" + pageName;
    		ff.method = "post";
    		ff.submit();
    	}
    </script>
  </head>
  <body>
	<%
		if(session.getAttribute("tLogin") != null) {
			teaDTO dto = (teaDTO)session.getAttribute("tLogin");
	%>
	<form name="stuGradeForm">
	<fieldset style="width: 400px;">
	<legend style="font-size: 50px;">학생 이름 검색</legend>	
		<p>성적 입력할 학생의 이름을 입력하세요.</p>
		<p>
			<input type="text" name="sname">
			<input type="image" src="/HW0210/imges/ss1.png"
					onclick="stuGradeFunc('stuGrade2')">
		</p>
	</fieldset>
	</form>
	<%
		} else {
			out.print("<h3>로그인 후 이용 가능합니다.</h3>");
		}
	%>
  </body>
</html>