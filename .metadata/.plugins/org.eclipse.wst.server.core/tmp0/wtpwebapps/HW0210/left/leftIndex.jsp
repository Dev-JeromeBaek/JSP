<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<h2>이용 서비스</h2>
	<br>
	<%
		if(session.getAttribute("tLogin") != null)
		{
			teaDTO dto = (teaDTO)session.getAttribute("tLogin");
					
	%>
		<a href="/HW0210/a/insertStuInfoPage">
		학생 개인정보 입력</a><br><br>
		<a href="/HW0210/a/stuGrade1">
		학생 성적정보 입력</a><br><br>
		<a href="/HW0210/a/showStuList">
		전체 학생 목록</a><br><br>
		<a href="/HW0210/a/stuSearch1">
		학생 정보 검색</a><br><br>
	<%
		} else {
	%>
		<h3>로그인 후 이용 가능합니다.</h3>
	<%
		}
	%>
	
  </body>
</html>