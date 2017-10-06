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
  		String out_Msg = null;
  		
  		int num = Integer.parseInt(request.getParameter("num"));
  		
  		try {
  			Class.forName("oracle.jdbc.driver.OracleDriver");
  			System.out.println("[delCarConn] : Driver Load Comp");
  			
  			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
  			String user = "aabb";
  			String password = "aabb";
  			Connection conn = 
  					DriverManager.getConnection(url, user, password);
  			System.out.println("[delCarConn] : Connection Comp");
  			
  			String sql = "delete from hw_car where num=?";
  			
  			PreparedStatement ppst = conn.prepareStatement(sql);
  			ppst.setInt(1, num);
  			
  			int res = ppst.executeUpdate();
  			
  			out_Msg = res > 0 ? "삭제 완료" : "삭제 실패";
  			
  			ppst.close();
  			conn.close();
  			
  		} catch(Exception e) {
  			e.printStackTrace();
  		}
  	%>
  	<script type="text/javascript">
  		alert("<%= out_Msg %>");
  		if("<%= out_Msg %>" == "삭제 완료")
		{
			location.href = "/Curr03_OracleDB/j09_selectCarList.jsp";
		} else {
			location.href = "/Curr03_OracleDB/j09_selectCarOne.jsp?num=<%= num %>";
		}
  	</script>
  </body>
</html>