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
    <style type="text/css">
    body {
		margin-top: 100px;
		margin-left: 100px;
		width: 70%;
	}
    </style>
    <script type="text/javascript">
    	function goPage(pageName, num) {
    		var goUrl = "/Curr03_OracleDB/" + pageName + ".jsp";
    		
    		if(num != null)
    		{
    			goUrl += "?num=" + num;
    		}
    		location.href = goUrl;
    	}
	</script>
  </head>
  <body>
	<%
// 		문제 : 파라미터 num을 이용하여 해당 정보를 출력
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		PeopleDTO dto = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("[selectOne] : Dirver Load Comp");
			
			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
			String user = "aabb";
			String password = "aabb";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("[selectOne] : Connection Comp");
			
			String sql = "select * from t_peo where num=?";
			
			PreparedStatement ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			
			ResultSet rs = ppst.executeQuery();
			while(rs.next())
			{
				dto = new PeopleDTO();
				dto.setNum(rs.getInt("num"));
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
	<form action="/Curr03_OracleDB/j04_selectList.jsp">
		<table border="1" style="text-align: center; width: 290px;">
			<tr>
				<td>번 호</td>
				<td><%= dto.getNum() %></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><%= dto.getName() %></td>
			</tr>
			<tr>
				<td>나 이</td>
				<td><%= dto.getAge() %></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="목록볼거야"
							onclick="javascript:goPage('j04_selectList', null)">
					<input type="button" value="수정할거야"
							onclick=
								"javascript:goPage(
									'j06_updateForm', <%= dto.getNum() %>)">
					<input type="button" value="삭제할거야"
							onclick=
								"javascript:goPage(
									'j08_deleteConn', <%= dto.getNum() %>)">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>