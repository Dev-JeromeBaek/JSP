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
// 		문제 : 전달된 파라미터 num을 이용하여
// 				DB정보를 삭제하고
// 				alert()으로 "삭제 완료" 출력 후
// 				전체 목록 보기(j04_selectList) 페이지로 이동

		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		String msg = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("[deleteConn] : Driver Load Comp");
			
			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
			String user = "aabb";
			String password = "aabb";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("[deleteConn] : Connection Comp");
			
			String sql = "delete from t_peo where num=?";
			
			PreparedStatement ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			
			int res = ppst.executeUpdate();
			
			msg = res > 0 ? "삭제 완료" : "삭제 실패";
			
			ppst.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	%>
	
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href = "/Curr03_OracleDB/j04_selectList.jsp";
	</script>
	
  </body>
</html>