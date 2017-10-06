<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%--
		경로를 /로 시작하면 자동으로 프로젝트 이름 제공됨
	--%>
	
	<c:redirect url="/j12_redirect02.jsp">
		<c:param name="data" value="하나둘셋"/>
	</c:redirect>
  </body>
</html>