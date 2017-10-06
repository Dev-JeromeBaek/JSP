<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<h2>회원만 이용 가능한 페이지</h2>
	
	<%
// 		세션에 원하는 키가 존재할 때의 값 => 해당 값
		System.out.println("1 : " + session.getAttribute("nowLogin"));
	
// 		세션에 원하는 키가 존재하지 않을 때의 값 => null
		System.out.println("2 : " + session.getAttribute("aaa"));
		
		if(session.getAttribute("nowLogin") != null) {
			String id = (String)session.getAttribute("nowLogin");
	%>
		<%= id %>님 환영합니다.
	<%
		} else {
	%>
			비회원은 이용할 수 없는 페이지입니다.
	<%
		}
	%>
	
  </body>
</html>