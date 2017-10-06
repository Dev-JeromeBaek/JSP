<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     <%@ page import="dto.PeopleDTO" %> --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%--
		useBean의 사용
		- 사용되는 클래스는 기본생성자를 반드시 가져야 함
		- import 필요 없음
		- setter / getter가 반드시 존재해야 프로퍼티 이용 가능.
	--%>
	<%
// 		PeopleDTO dto = new PeopleDTO();
// 		dto.setName("둘리");
// 		dto.setAge(10);
	%>
	
	<jsp:useBean id="dto" class="dto.PeopleDTO" scope="request"/>
	id="dto" : 레퍼런스 이름
	class="dto.PeopleDTO"
	scope="page" : 값을 유지하는 범위 
		("page" : 현재페이지)
		("request")
	
	<jsp:setProperty property="name" name="dto" value="둘리"/>
	property="name" : setName(value="둘리");
	name="dto" : people dto 가 가지고있는 멤버
	value="둘리"
	=> dto.setName("둘리"); >>>> name="dto".property="name"(value="둘리");
	
	<jsp:setProperty property="age" name="dto" value="10"/>
	value="10" : ("")쌍따옴표 안에 입력을 하면 자동으로 형변환 해줌!
	
	
<%-- 	이름 : <%= dto.getName() %>, 나이 : <%= dto.getAge() %> --%>
	이름 : <jsp:getProperty property="name" name="dto"/>,
	나이 : <jsp:getProperty property="age" name="dto"/>
	<hr>
	
	<h2>인사 정보 입력</h2>
	
	<form action="/Curr10_EL_JSTL/j01_bean02.jsp" method="post">
		이 름 : <input type="text" name="name"> <br>
		나 이 : <input type="text" name="age"> <br>
		<input type="submit" value="전송하기">
	</form>
  </body>
</html>