<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
// 		쿠키는 같은 이름의 객체를 중복허용 하지 않는다.
// 		쿠키의 삭제는 전송 중지를 의미하며, setMasAge(0)으로 함

		Cookie ck = new Cookie("MyCookie-BasePath","");
		ck.setMaxAge(0);		// 전송되는 기간을 0초로 설정
		response.addCookie(ck);
	%>
	<script type="text/javascript">
		alert("MyCookie-BasePath 삭제 완료");
		location.href="/Curr04_DBCP/j24_cookie_home.jsp;";
	</script>
  </body>
</html>