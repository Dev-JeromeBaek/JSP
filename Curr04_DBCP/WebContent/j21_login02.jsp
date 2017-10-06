<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
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
		
		try {
			Context initContext = new InitialContext();
			DataSource dataSource = (DataSource)initContext.lookup("java:/comp/env/jdbc/oracle");
			Connection conn = dataSource.getConnection();
			System.out.println("Connection Comp");
			
			String sql = "select * from t_member where id=? and pw=?";
			PreparedStatement ppst = conn.prepareStatement(sql);
			String id = request.getParameter("id");
			System.out.println(id);
			String pw = request.getParameter("pw");
			ppst.setString(1, id);
			ppst.setString(2, pw);
			
			ResultSet rs = ppst.executeQuery();
			if(rs.next())
			{
				msg = id + "님 반갑습니다.";
				session.setAttribute("nowLogin", id);
				
			} else {
				msg = "아이디 또는 비밀번호가 일치하지 않습니다.";
			}
			rs.close();
			ppst.close();
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href="/Curr04_DBCP/j21_login03.jsp";
	</script>
  </body>
</html>