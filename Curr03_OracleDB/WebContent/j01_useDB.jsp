<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
// 		정보 저장하기
  		String msg = null;
		try 
		{
// 			1. Driver Load
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("1. Driver Load Comp");
			
// 			2. Connection
			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
			String user = "aabb";
			String password = "aabb";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("2. Connection Comp");
// 			3. SQL && execute && result
			String sql = "insert into t_peo values(t_peo_seq.nextval, 'JSP둘리', 11)";
			PreparedStatement ppst = conn.prepareStatement(sql);
			int res = ppst.executeUpdate();
			msg = res > 0 ? "저장 완료" : "저장 실패";
			
// 			4. close
			ppst.close();
			conn.close();

		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
	
	msg : <%= msg %>
	
  </body>
</html>