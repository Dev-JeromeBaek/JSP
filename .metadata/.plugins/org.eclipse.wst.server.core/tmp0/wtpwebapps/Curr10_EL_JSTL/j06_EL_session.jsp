<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%--
		EL은 session의 attribute 값도 출력함
	--%>
	
	1. 세션 이용 <br>
	<%
		int p = 100;
		session.setAttribute("p", p);
	%>
		p : ${ p }
	<hr>
	
	2. request와 session의 attribute 이름이 같은 경우 확인 <br>
	<%
		request.setAttribute("k", 10);
		session.setAttribute("k", 200);
	%>
		k : ${ k } <br>
		request가 기본으로 우선순위가 높다!!!! <br>
		requestScope.k : ${ requestScope.k } <br>
		sessionScope.k : ${ sessionScope.k } <br>
		
	3. 이용 예 <br>
	<%
		session.setAttribute("loginOk", "aa");
	%>
	
	현재 로그인 상태인지 확인
		=> (세션에 loginOk가 존재하면 로그인 인정) <br>
		
	로그인 ? => ${ loginOk != null }, 
	!empty? => ${ !empty loginOk } <br>
	<hr>
		
  </body>
</html>