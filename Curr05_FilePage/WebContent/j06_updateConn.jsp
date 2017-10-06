<%@page import="dao.hpDAO"%>
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
		String msg = null;
		hpDAO dao = new hpDAO();
		String upfile = request.getParameter("upfile");
		System.out.println(upfile);
		if(upfile != null)
		{
			
		}
	%>
  </body>
</html>