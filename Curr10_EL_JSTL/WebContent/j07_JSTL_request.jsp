<%@page import="dto.PeopleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%-- uri에 코어 라이브러리를 어떤이름의 태그로 쓸거냐?prefix="c" <c:>로쓸거다 --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  	
	<%--
		JSTL : JSP Standard Tag Library
		- 위치 : jakarta.apache.org -> taglibs -> apache standard taglib
		- taglib 디렉티브 선언
			<%@ taglib prefix="" uri="" %>
	--%>
	
	<h2>JSTL</h2>
	
	JSTL 변수 선언(setAttribute 기능) <br>
	- var : 변수이름 (attribute 이름) <br>
	- value : 변수값 (attribute 값) <br>
	- scope : 값 유지 범위 설정 <br>
	<hr>
	
	1. request setAttribute - 정수 <br>
	<c:set var="num" value="3" scope="request"/>
		num : ${ num } <br>
		num - 1 : ${ num - 1 } <br>
		
	현재 num에서 1을 뺀 값을 다시 저장하는 경우 : 
		<c:set var="num" value="${ num-1 }" scope="request"/>
		num => ${ num } <br>
	<hr>
	
	2. request setAttribute - 문자형 <br>
	<c:set var="name" value="둘리" scope="request"/>
		name : ${ name }
	<hr>
	
	3. request setAttribute - 객체형 <br>
	<%
		PeopleDTO dto = new PeopleDTO();
		dto.setName("도우너");
		dto.setAge(20);
		request.setAttribute("dto", dto);
	%>
 		peo : ${ peo.name }, ${ peo.age } <br>
	
	<jsp:useBean id="peo2" class="dto.PeopleDTO"/>
	<jsp:setProperty property="name" name="peo2" value="마이콜"/>
	<jsp:setProperty property="age" name="peo2" value="29"/>
	<c:set var="peo2" value="${ peo2 }"/>
		peo2 : ${ peo2.name }, ${ peo2.age } <br>
		
	##조심## <br>
	<c:set var="peo" value="${ peo2 }" scope="request"/>
		peo3 : ${ peo.name }, ${ peo.age } <br>
	
	peo의 정보 입력(수정)
	<c:set target="${ peo }" property="name" value="마이콜"/>
	<c:set target="${ peo }" property="age" value="33"/>
		바뀐 peo : ${ peo.name }, ${ peo.age }
	
	
	
	
	
	
	
	
	
  </body>
</html>