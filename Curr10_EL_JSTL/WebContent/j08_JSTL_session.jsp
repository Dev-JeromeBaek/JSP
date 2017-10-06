<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	0. session에 담기기 전  <br>
		nowLogin : ${ nowLogin } <br>
		nowLogin == null : ${ nowLogin == null } <br>
	<hr>
	
	1. session setAttribute(세션에 담긴 후) <br>
	<c:set var="nowLogin" value="aaa" scope="session"/>
		nowLogin : ${ nowLogin }  <br>
		nowLogin == null : ${ nowLogin == null } <br>
	<hr>	
	
	2. session remove <br>
	<c:remove var="nowLogin" scope="session"/> <br>
		nowLogin : ${ nowLogin } <br>
		nowLogin == null : ${ nowLogin == null } <br>
	<hr>
	
	
	
  </body>
</html>