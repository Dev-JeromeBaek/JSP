<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Error Exception02</title>
  </head>
  <body>
	<%--
		에러 처리 방법 2
		- web.xml 이용
		<error-page>
  			<!-- 만약 이런 예외상황이 발생 하면?(ex : java.lang.ArrayIndexOutOfBoundsException -->
  			<exception-type>java.lang.ArrayIndexOutOfBoundsException</exception-type> 
  			<!-- 어디 페이지를 보여줘라.!(ex : /j07_errorView.jsp -->
  			<location>/j07_errorView.jsp</location>
  			<!-- 경로 표현 시 (/)로 시작하면 자동으로 프로젝트 이름이 적용됨. -->
  		</error-page>
	--%>
	
	<%
		String[] str = {"a"};
	%>
	
	<%= str[2] %>
	
  </body>
</html>