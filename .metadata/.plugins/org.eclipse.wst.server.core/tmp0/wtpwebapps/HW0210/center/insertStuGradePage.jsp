<%@page import="dto.stuDTO"%>
<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	function insertStuGradeFunc(pageName) {
    		var ff = document.insertStuGradeForm;
    		if(ff.kor.value == "") ff.kor.value = 0;
    		if(ff.eng.value == "") ff.eng.value = 0;
    		if(ff.math.value == "") ff.math.value = 0;
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
			stuDTO sdto = (stuDTO)request.getAttribute("sdto");
// 			request.setAttribute("sdto", sdto);
	%>
	<form name="insertStuGradeForm">
	<fieldset style="width: 400px;">
	<legend style="font-size: 50px;">학생 성적 입력</legend>	
		<table border="1" style="text-align: center;">
			<tr>
				<td>번 호</td>
				<td><%= sdto.getSnum() %></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><%= sdto.getSname() %></td>
			</tr>
			<tr>
				<td>국어점수</td>
				<td>
					<input type="text" name="kor"
							placeholder="<%= sdto.getKor() %>">
				</td>
			</tr>
			<tr>
				<td>영어점수</td>
				<td>
					<input type="text" name="eng"
							placeholder="<%= sdto.getEng() %>">
				</td>
			</tr>
			<tr>
				<td>수학점수</td>
				<td>
					<input type="text" name="math"
							placeholder="<%= sdto.getMath() %>">
				</td>
			</tr>
		</table>
		<p>
			<input type="button" value="입력취소"
					onclick="insertStuGradeFunc('stuGrade2')">
			<input type="button" value="입력저장"
					onclick="insertStuGradeFunc('saveGrade1')">
			<input type="hidden" name="snum" 
			value="<%= sdto.getSnum() %>">
			<input type="hidden" name="sname" 
			value="<%= sdto.getSname() %>">
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