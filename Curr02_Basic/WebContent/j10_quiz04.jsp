<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		String checkAge = request.getParameter("checkAge");
	%>
	<form name="frm">
		<input type="hidden" name="checkAge" value="<%= checkAge %>">
	</form>
	
		<script type="text/javascript">
			alert(document.frm.checkAge.value);
			location.href = "/Curr02_Basic/j10_quiz01.jsp";
		</script>

  </body>
</html>