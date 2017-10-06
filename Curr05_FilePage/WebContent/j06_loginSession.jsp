<%@page import="dao.hpDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="module.jdbcConnector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		String msg = null;
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		hpDAO dao = new hpDAO();
		msg = dao.loginAdmin(id, pw);
// 		System.out.println("AA : " + id);
		if(msg.equals(id + "님 로그인 되었습니다."))
		{
// 			System.out.println("ZZ : " + id);
			session.setAttribute("adminLogin", id);
		}
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href="/Curr05_FilePage/j06_home.jsp";
	</script>
  </body>
</html>