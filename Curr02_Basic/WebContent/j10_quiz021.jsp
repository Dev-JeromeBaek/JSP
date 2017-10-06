<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
		
		String rcv = request.getParameter("age");
		int age = Integer.parseInt(rcv);
		
		System.out.println(request);
		
		String url = null;
		if(age > 19) {	// 성인
			url = "/j10_quiz031.jsp";
		} else {
			url = "/j10_quiz041.jsp";
		}
	%>
	
	<jsp:forward page="<%= url %>"/>
		

</body>
</html>












