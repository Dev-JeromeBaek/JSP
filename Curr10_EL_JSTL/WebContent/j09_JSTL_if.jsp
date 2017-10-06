<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<h2>if - test</h2>
	
	<c:set var="num" value="5"/>
	
	<c:if test="${ num < 10 }">
		${ num }은 10보다 작다. <br>
	</c:if>
	true일때만 값을 반환해주고 아닐때는 아예 띄우지 않는다. <br>
	
	<h2>choose - when - otherwise</h2>
	
	<c:set var="age" value="14"/>
	
	<c:choose>
		<c:when test="${ age < 8 }">
			유치원 갑니다. <br>
		</c:when>
		<c:when test="${ age <= 13 }">
			초등학교 갑니다. <br>
		</c:when>
		<c:when test="${ age <= 16 }">
			중학교 갑니다. <br>
		</c:when>	
		<c:when test="${ age <= 19 }">
			고등학교 갑니다. <br>
		</c:when>
		<c:otherwise>
			막 아무데나 갑니다. 막그냥 아주그냥 <br>
		</c:otherwise>
	</c:choose>
	
	when : else-if <br>
	otherwise : else <br>
	
  </body>
</html>