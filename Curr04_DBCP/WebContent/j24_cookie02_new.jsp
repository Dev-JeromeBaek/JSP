<%@page import="java.net.URLEncoder"%>
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
// 		쿠키의 이름과 값은 기본적으로 한글이 불가능하며,
// 		한글을 이용하려는 경우 인코딩 및 디코딩이 필요(공부할 것)
// 		Cookie ck = new Cookie("MyCookie-BasePath", "MyCookie-BasePath");
		Cookie ck = new Cookie("MyCookie-BasePath", URLEncoder.encode("백승엽", "UTF-8"));
		
		response.addCookie(ck);		// 쿠키 전송 명령
	%>
	<script type="text/javascript">
		alert("쿠키 생성 및 전송 완료");
		location.href="/Curr04_DBCP/j24_cookie_home.jsp";
	</script>
  </body>
</html>