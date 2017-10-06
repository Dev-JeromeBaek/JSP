<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
// 		생성자를 통해서 이름, 값 입력 => String!!!! 모두모두 String 
		Cookie ck = new Cookie("MyCookie-SubPath", "MyCookie-SubPath");
		
		response.addCookie(ck);		// 쿠키 전송 명령
	%>
	<script type="text/javascript">
		alert("쿠키 생성 및 전송 완료[하위경로]");
		location.href="/Curr04_DBCP/j24_cookie_home.jsp";
	</script>
  </body>
</html>