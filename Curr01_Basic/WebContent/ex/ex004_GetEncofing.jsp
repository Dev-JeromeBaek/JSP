<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Get방식 Encoding숨기기</title>
  </head>
  <body>
	<%
		String value="자바";
		String encodedValue = URLEncoder.encode(value, "EUC-KR");
		response.sendRedirect("/Curr01_Basic/ex/ex003_index.jsp"); 
	%>
  </body>
</html>