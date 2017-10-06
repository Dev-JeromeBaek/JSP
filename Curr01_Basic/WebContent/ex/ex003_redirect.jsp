<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<%
		String id = request.getParameter("memberId");
		if(id.equals("madvirus"))
		{
// 			[입력한 아이디가 "madvirus" 인경우 로그인 성공과 함께 메인 페이지로 이동 시킨다.]
			response.sendRedirect("/Curr01_Basic/ex/ex003_index.jsp");
		} else {
// 			[입력한 아이디가 "madvirus"가 아닌경우 로그인 실패 페이지로 이동시킨다.]
			
	%>
<html>
  <head>
    <meta charset="UTF-8"> <title>Redirect 페이지 이동</title>
  </head>
  <body>
	<h2> ex 로그인 실패시 페이지</h2>
	
	잘못된 아이디입니다.
	<%-- 나중에 이걸 알림창으로 띄워주면 궂이 페이지이동을 하지 않아도 될 듯 싶다!
		@@BUT! 로그인 성공했을 때 페이지 이동으로 위해 알아둘 것! --%>
	<%
		}	
	%>
  </body>
</html>