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
// 		문제 : 수정 내용을 가진 파라미터를 이용하여
// 				해당 정보를 수정한 후,
// 				상세 보기 화면으로 이동
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String msg = null;
// 		j05_selectOne 
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("[updateConn] : Driver Load Comp");
			
			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
			String user = "aabb";
			String password = "aabb";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("[updateConn] : Connection Comp");
			
			String sql = "update t_peo set name=?, age=? where num=?";
			
			PreparedStatement ppst = conn.prepareStatement(sql);
			
			ppst.setString(1, name);
			ppst.setInt(2, age);
			ppst.setInt(3, num);
			
			int res = ppst.executeUpdate();
			
			msg = res > 0 ? "수정 완료" : "수정 실패";
			
			ppst.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href = "/Curr03_OracleDB/j05_selectOne.jsp?num=<%= num %>";
	</script>
	
  </body>
</html>