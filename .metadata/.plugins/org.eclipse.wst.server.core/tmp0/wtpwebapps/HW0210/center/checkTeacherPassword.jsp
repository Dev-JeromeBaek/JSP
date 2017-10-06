<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
   	<script type="text/javascript">
   		function checkTeacherPasswordFunc(pageName) {
   			var ff = document.checkTeacherPasswordForm;
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
			int snum = (int) request.getAttribute("snum");
			System.out.println("AA : " + snum);
	%>
	<form name="checkTeacherPasswordForm">
	<fieldset style="width: 500px;">
	<legend style="font-size: 50px;">Password Check</legend>	
		<p>학생 정보 삭제를 위해 비밀번호를 입력해주세요.</p>
		<p><input type="text" name="tpw">
			<input type="button" value="삭제진행"
					onclick="checkTeacherPasswordFunc('stuDel')">
			<input type="hidden" name="tnum" 
			value="<%= dto.getTnum() %>">
			<input type="hidden" name="snum" value="<%= snum %>">
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