<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
// 		세션의 정보가 삭제되는 사오항
// 		1. 정보 유지 시간이 경과된 경우
// 		2. 브라우저가 종료된 경우
// 		3. 강제적으로 삭제된 경우
// 			- removeAttribute("키") : 해당 키의 정보를 삭제.
// 			- invalidate() : 
// 				현재 session의 모든 정보를 삭제.
// 				invalidate() 실행 뒤 해당 페이지에서
// 				session을 재사용하는 것은 불가능하며,
// 				request로부터 새로운 session을 획득하거나
// 				페이지 이동으로 통해 새로운 session을 획득해야만 사용 가능해진다.
			session.invalidate();
// 			에러 :
// 			session.setAttribute("mm", arg1), arg1)
			HttpSession svlSession = request.getSession();
			svlSession.setAttribute("pp", 222);
	%>
	
	<h2>세션 모든 정보 삭제(invalidate)</h2>
	session : <%= session %> <br>
	svlSession : <%= svlSession %> <br>
	
  </body>
</html>