<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="dto.PeopleDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>j04_selectList</title>
  </head>
  <body>
	<h3>인사정보 목록 보기</h3>
	<%
// 		문제 : t_peo의 num, name을 ArrayList에 저장 후
// 				테이블 형식으로 출력
// 				(번호에 a태그 적용)
		request.setCharacterEncoding("UTF-8");
		ArrayList<PeopleDTO> listc = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("[selectList] : Driver Load Comp");
			
			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
			String user = "aabb";
			String password = "aabb";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("[selectList] : Connection Comp");
			
			String sql = "select * from t_peo order by num";
			
			PreparedStatement ppst = conn.prepareStatement(sql);
			
			ResultSet rs = ppst.executeQuery();
			
			
			while(rs.next())
			{
				PeopleDTO dto = new PeopleDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age"));
				
				if(listc == null) {
					listc = new ArrayList();
				}
				listc.add(dto);
			}
			rs.close();
			ppst.close();
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	%>
	<form name="frm">
		<table border="1" style="text-align: center;">
			<tr>
				<td colspan="2">
					<a href="/Curr03_OracleDB/j02_insertForm.jsp">
						저장하기
					</a>
				</td>
			</tr>
			<tr>
				<td>번 호</td>
				<td>이 름</td>
			</tr>
	<%
			if(listc != null)
			{
				for(PeopleDTO each : listc)
				{
	%>
				<tr>
					<td>
						<a href="/Curr03_OracleDB/j05_selectOne.jsp?num=<%= each.getNum() %>"><%= each.getNum() %></a>
					</td>
					<td><%= each.getName() %>
				</tr>
	<%
				}
			}
	%>
		</table>
	</form>
  </body>
</html>