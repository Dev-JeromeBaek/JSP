<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<%
// 		쿠키는 기본적으로 브라우저가 종료되면 전송이 중단됨.
// 		단, setMaxAge()로 시간을 설정하면 브라우저가 종료되어도
// 		계속적으로 전송됨.
// 		계속 전송되는 쿠키를 중단하고 싶은 경우,
// 		시간을 0으로 설정된 같은 이름의 쿠키를 생성해서 전송함.
		
		Cookie ck = new Cookie("MyCookie-age7", "age7");
		ck.setMaxAge(7);		// 시간 단위 : 초
		response.addCookie(ck);
	%>
	<script type="text/javascript">
		alert("생존시간 7초 쿠키 생성 및 전송 완료");
		location.href="/Curr04_DBCP/j24_cookie_home.jsp";
	</script>
	
  </body>
</html>