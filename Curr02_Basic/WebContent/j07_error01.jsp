<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page errorPage="/j07_errorView.jsp" %>
    <%--  => 경로 표현 시 (/)로 시작하면 자동으로 프로젝트 이름이 적용됨. --%>
    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Error Exception01</title>
  </head>
  <body>
	<%--
		에러 처리 방법 1
		- page 디렉티브 지정 : <%@ page errorPage=".." %>
		  => 경로 표현 시 (/)로 시작하면 자동으로 프로젝트 이름이 적용됨.
	--%>
	
	<%
		int a = 3 / 0;
	%>
  </body>
</html>