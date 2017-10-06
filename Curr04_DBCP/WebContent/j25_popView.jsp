<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<h2>팝업 화면</h2>
	
	<input type="button" value="7초동안 보지않기"
			onclick="javascriprt:noView()">
			
	<script type="text/javascript">
		function noView() {
			location.href = "/Curr04_DBCP/j25_setCK.jsp";
		}
	</script>
  </body>
</html>