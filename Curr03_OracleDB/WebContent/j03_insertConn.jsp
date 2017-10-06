<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
		request.setCharacterEncoding("UTF-8");
		String msg = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("[insertConn] : Driver Load Comp");
			
			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
			String user = "aabb";
			String password = "aabb";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("[insertConn] : Connection Comp");
			
			String sql = "insert into t_peo values(t_peo_seq.nextval, ?, ?)";
			
			PreparedStatement ppst = conn.prepareStatement(sql);
			
			String name = request.getParameter("name");
			int age = Integer.parseInt(request.getParameter("age"));
			ppst.setString(1, name);
			ppst.setInt(2, age);
			
			int res = ppst.executeUpdate();
			
			msg = res > 0 ? "저장완료" : "저장 실패";
			
			ppst.close();
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href = "/Curr03_OracleDB/j04_selectList.jsp";
	</script>
  </body>
</html>