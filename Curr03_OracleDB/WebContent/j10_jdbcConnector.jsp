<%@page import="java.util.ArrayList"%>
<%@page import="dto.PeopleDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="module.jdbcConnector"%>
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
		try {
// 			1. Driver Load
// 			2. Connection
			
// 			jdbcConnector connector = new jdbcConnector();
// 			Connection conn = connector.getConnector();
// 			↓↓↓ 위 방법을 줄이기 위해 getConnector()에 static을 걸어준다.
			Connection conn = jdbcConnector.getConnector();

// 			3. SQL && execute && result
			String sql = "select * from t_peo order by num desc";
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
// 			4. close
			rs.close();
			ppst.close();
			conn.close();

		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
	
	<h2>인사 정보 전체 보기</h2>
	
	<form>
		<table border="1" style="text-align: center;">
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
				<td><%= each.getAge()%></td>
			</tr>
	<%
			}
		}
	%>				
		</table>
	</form>
  </body>
</html>