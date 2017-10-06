<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<a href = "/Curr04_DBCP/j24_cookie02_new.jsp">
		1. 쿠키 생성 및 전송 [기본경로]</a> <br>
	<a href = "/Curr04_DBCP/j24_cookie03_get.jsp">
		2. 쿠키 수신 확인 [기본경로]</a> <br>
	<a href = "/Curr04_DBCP/j24_cookie04_age.jsp">
		3. 쿠키 생존(전송 유효) 시간 설정 [기본경로]</a> <br>
	<a href = "/Curr04_DBCP/ckSub/j24_cookie03_get.jsp">
		4. 쿠키 확인 [하위경로]</a> <br>
	<a href = "/Curr04_DBCP/ckSub/j24_cookie02_new.jsp">
		5. 쿠키 생성 및 전송 [하위경로/경로설정 없음]</a> <br>
	<a href = "/Curr04_DBCP/ckSub/j24_cookie04_setPath.jsp">
		6. 쿠키 생성 및 전송 [하위경로/경로설정 있음]</a> <br>	
	<a href = "/Curr04_DBCP/j24_cookie_stop.jsp">
		7. 쿠키 삭제(전송 중지) 명령</a> <br>
  </body>
</html>