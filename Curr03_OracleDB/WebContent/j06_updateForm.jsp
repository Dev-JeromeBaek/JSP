<%@page import="dto.PeopleDTO"%>
<%@page import="java.sql.ResultSet"%>
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
// 		문제 : 파라미터 num을 이용하여 정보를 획득한 후
// 				수정화면을 완성하세요.
// 				(단, num는 수정 불가능 && form-post)
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		PeopleDTO dto = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("[updateForm] : Driver Load Comp");
			
			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
			String user = "aabb";
			String password = "aabb";
			
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("[updateForm] : Connection Comp");
			
			String sql = "select * from t_peo where num=?";
			
			PreparedStatement ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			
			ResultSet rs = ppst.executeQuery();
			
			while(rs.next())
			{
				dto = new PeopleDTO();
				dto.setNum(num);
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age"));
			}
			rs.close();
			ppst.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	
	<h2>학생 정보 수정</h2>
	<form action="/Curr03_OracleDB/j07_updateConn.jsp" method="post">
		<table border="1" style="text-align: center; width: 290px;">
			<tr>
				<td>번 호</td>
				<td><input type="text" name="num" 
							value="<%= num %>" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name" 
							placeholder="<%= dto.getName() %>"></td>
			</tr>
			<tr>
				<td>나 이</td>
				<td><input type="text" name="age" 
							placeholder="<%= dto.getAge() %>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="reset" value="다시작성">
					<input type="submit" value="수정완료">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>