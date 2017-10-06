<%@page import="entity.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		Student stu = (Student)request.getAttribute("stu");
	%>
	
  	<form name="modFrm">
  		<table border="1" style="text-align: center; width: 400px;" >
			<tr>
				<td>번 호</td>
				<td><input type="text" name="num" value="<%= stu.getNum() %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name" value="<%= stu.getName() %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td>국어점수</td>
				<td><input type="text" name="kor" placeholder="수정할 국어점수 입력">
			</tr>
			<tr>
				<td>영어점수</td>
				<td><input type="text" name="eng" placeholder="수정할 영어점수 입력">
			</tr>
			<tr>
				<td>수학점수</td>
				<td><input type="text" name="math" placeholder="수정할 수학점수 입력">
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
			
				<input type="hidden" name="works" value="modInfo">
				<input type="hidden" name="view" value="showAll">
				
				<input type="submit" value="수정된 정보 저장">
			</td>
			</tr>
  		</table>
  	</form>
  </body>
</html>