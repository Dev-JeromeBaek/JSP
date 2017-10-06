<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  	<script type="text/javascript">
  		function insertStuFunc(pageName) {
  			var ff = document.insertStuInfoForm;
  			if(ff.sname.value == "") {
    			alert("이름을 입력하세요");
    			ff.sname.focus();
    		} else if(ff.upfile.value == "") {
    			alert("사진을 첨부해주세요");
    		} else {
	    		ff.action = "/HW0210/a/" + pageName;
	    		ff.method = "post";
	    		ff.submit();
    		}
  		}
  	</script>
  </head>
  <body>
  	<%
		if(session.getAttribute("tLogin") != null)
		{
			teaDTO dto = (teaDTO)session.getAttribute("tLogin");
					
	%>
	<form name="insertStuInfoForm" 
			enctype="multipart/form-data">
	<fieldset style="width: 400px;">
	<legend style="font-size: 50px;">학생 정보 입력</legend>
		<br>
		<table border="1" style="text-align: center;">
			<tr>
				<td>이 름</td>
				<td><input type="text" name="sname"></td>
			</tr>
			<tr>
				<td>성 별</td>
				<td>
					&nbsp;
					<input type="radio" name="sgender" 
							value="남자" checked="checked"> 남자
					&nbsp;
					<input type="radio" name="sgender" 
							value="여자"> 여자&nbsp;&nbsp;
				</td>
			</tr>
			<tr>
				<td>학년 / 반</td>
			 	<td align="center">
			 		<select name="shak">
			 			<option value="1">1학년</option>
			 			<option value="2">2학년</option>
			 			<option value="3">3학년</option>
			 		</select>
			 		&nbsp;&nbsp;
			 		<select name="sban">
			 		<% for(int i=1; i<=10; i++) { %>
			 			<option value="<%= i %>"><%= i %>반</option>
			 		<% } %>
			 		</select>
			 	</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="date" name="sbirth"></td>
			</tr>
			<tr>
				<td>사 진</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="file" name="upfile">
				</td>
			</tr>
		</table>
		<p>
			<input type="button" value="입력취소"
					onclick="insertStuFunc('homeLog')">
			<input type="button" value="입력저장"
					onclick="insertStuFunc('saveStu')">
		</p>
	</fieldset>
	</form>
	<%
		} else {
	%>
		<h3>로그인 후 이용 가능합니다.</h3>
	<%
		}
	%>
  </body>
</html>