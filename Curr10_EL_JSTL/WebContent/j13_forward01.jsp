<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<f:requestEncoding value="UTF-8"/>
	
	<jsp:forward page="/j13_forward02.jsp">
		<jsp:param value="11111 데이터" name="data"/> 
	</jsp:forward>
	
  </body>
</html>