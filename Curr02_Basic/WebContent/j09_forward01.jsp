<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>forward 방식!</title>
  </head>
  <body>
	<h2>forward01 : 시작페이지</h2>
	<%-- 두가지 방법 모두 자주 쓰이니 잊지말고 기억할것!!! --%>
	<%-- 의미가 다르지 않지만 쓰는 방식의 차이이다!! --%>
	<a href="/Curr02_Basic/j09_forward0201.jsp">중간페이지로 이동( 자바코드 명령 방법 )</a>
	<hr>
	<a href="/Curr02_Basic/j09_forward0202.jsp?data=파라미터값">중간페이지로 이동( jsp action태그 명령 방법 )</a>
	<hr>
	
  </body>
</html>