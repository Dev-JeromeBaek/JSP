<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<jsp:useBean id="peo" class="dto.PeopleDTO" scope="request"/>
	
	이름 : <jsp:getProperty property="name" name="peo"/>
	<br>
	나이 : <jsp:getProperty property="age" name="peo"/>
	<br>
	
	scope="request" : 보내는쪽과 받는쪽의 scope설정을 동일하게 해줘야 값이 request로 넘어감!
	
  </body>
</html>