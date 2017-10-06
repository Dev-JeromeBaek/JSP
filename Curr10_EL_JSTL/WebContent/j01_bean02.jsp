<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<jsp:useBean id="rcvPeo1" class="dto.PeopleDTO" />
	<jsp:setProperty property="name" name="rcvPeo1"/>
	<jsp:setProperty property="age" name="rcvPeo1"/>
	
	1. <jsp:getProperty property="name" name="rcvPeo1"/>
		<jsp:getProperty property="age" name="rcvPeo1"/>
	
	<hr>
	
	<jsp:useBean id="rcvPeo2" class="dto.PeopleDTO"/>
	<jsp:setProperty property="*" name="rcvPeo2"/>
<%-- 	
	<jsp:setProperty property="*" name="rcvPeo2"/> 
	//=> 알아서 찾아서 set해준다!!!
--%>
		
	2. <jsp:getProperty property="name" name="rcvPeo2"/>
		<jsp:getProperty property="age" name="rcvPeo2"/>
		
  </body>
</html>