<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="dto.PeopleDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		ArrayList<PeopleDTO> listc = null;
		PeopleDTO dto = null;
		try {
			
			Context initContext = new InitialContext();
			DataSource dataSource = (DataSource)initContext.lookup("java:/comp/env/jdbc/oracle");
			Connection conn = dataSource.getConnection();
			System.out.println("Connection Comp");
			
			String sql = "select * from t_peo";
			
			PreparedStatement ppst = conn.prepareStatement(sql);
			ResultSet rs = ppst.executeQuery();
			
			while(rs.next())
			{
				dto = new PeopleDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age"));
				if(listc == null)
				{
					listc = new ArrayList();
				}
				listc.add(dto);
			}
			
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
	
	<h2>인사 정보 전체 보기</h2>
	
	<form>
		<table border="1" >
			<tr>
				<td>번 호</td>
				<td>이 름</td>
				<td>나 이</td>
			</tr>
	<%
			if(listc != null)
			{
				for(PeopleDTO each : listc)
				{
	%>
			<tr>
				<td><%= each.getNum() %></td>
				<td><%= each.getName() %></td>
				<td><%= each.getAge() %></td>
			</tr>
	<%
				}
			}
	%>
		</table>
	</form>
	
  </body>
</html>