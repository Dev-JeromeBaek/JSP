<%@page import="dto.PeopleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	직접 적어주는 것 과 attribute만 출력이 가능함!
	
	1. EL 출력 <br>
		숫자 : ${ 10 }, 문자 : ${ 'ABCD' }, ${ '우리나라' } <br>	
	<hr>
	
	2. 변수 값 출력 불가능 <br>
	<%
		int n = 5;
	%>
		n : ${ n } <br>
	<hr>
	
	3. setAttribute값 출력 가능(자동 getAttribute) <br>
	<%
		int m = 100;
		request.setAttribute("mm", m);
	%>
		m : ${ mm }
	<hr>
	
	4. 객체 setAttribute를 자동으로 getAttribute <br>
	<%
		PeopleDTO dto = new PeopleDTO();
		dto.setName("둘리");
		dto.setAge(10);
		request.setAttribute("peo", dto);
	%>
		이름 : ${ peo.name }, 나이 : ${ peo.age } <br>
	<hr>
	
	5. useBean의 자동 setAttribute를 적용한 예 <br>
	<jsp:useBean id="pp" class="dto.PeopleDTO"/>
	<jsp:setProperty property="name" name="pp" value="도우너"/>
	<jsp:setProperty property="age" name="pp" value="11"/>
	
		이름 : ${ pp.name }, 나이 : ${ pp.age } <br>
	
	
	
  </body>
</html>