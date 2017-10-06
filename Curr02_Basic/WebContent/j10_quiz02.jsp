<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  
	<h2>quiz02페이지</h2>
	
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String checkAge = request.getParameter("checkAge");
		
		System.out.println(checkAge);
		System.out.println(checkAge.equals("미성년자는 이용할 수 없습니다."));
		
		if(checkAge.equals("미성년자는 이용할 수 없습니다."))
		{
			System.out.println("AAA");
	%>
			<jsp:forward page="/j10_quiz04.jsp"/>
	<%
// 			out.print("<jsp:forward page='/j10_quiz04.jsp'/>");
			
		} else {
			System.out.println("VBBB");
			RequestDispatcher rd = 
					request.getRequestDispatcher("/j10_quiz03.jsp");
			rd.forward(request, response);
		}
	%>
	
  </body>
</html>