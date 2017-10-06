<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.PeopleDTO" %>

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
	
		try 
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Driver Load Comp");
			
			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
			String user = "aabb";
			String password = "aabb";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("Connection Comp");
			
			String sql = "select * from t_peo order by num";
			
			PreparedStatement ppst = conn.prepareStatement(sql);
			ResultSet rs = ppst.executeQuery();
			while(rs.next())
			{
				PeopleDTO dto = new PeopleDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age"));
				
				if(listc == null)
				{
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
	
	<form>
		<table border="1"  style="width: 400px; text-align: center;">
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
						<td><%= each.getName()%></td>
						<td><%= each.getAge() %></td>
					</tr>
			<%
					}
				} else {
			%>
					<tr>
						<td colspan="3">저장된 정보가 없습니다.</td>
					</tr>
			<%
				}
			%>
		</table>
	</form>
	
  </body>
</html>