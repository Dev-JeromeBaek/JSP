<%@page import="dto.CarDTO"%>
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
	.YY {
    	background-color: #D9D9D9;
    	font-family: "배달의민족 주아";
    	font-style: : bold;
    	font-size: 20px;
    	width: 155px;
    	height: 28px;
    	text-align: center; 
    }
    
    .ZZ {
    	width: 460px;
    	height: 28px;
    }
    </style>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		CarDTO dto = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("[modCarOne] : Driver Load Comp");
			
			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
			String user = "aabb";
			String password = "aabb";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("[modCarOne] : Connection Comp");
			
			String sql = "select * from hw_car where num=?";
			
			PreparedStatement ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			
			ResultSet rs = ppst.executeQuery();
			while(rs.next())
			{
				dto = new CarDTO();
				dto.setNum(rs.getInt("num"));
				dto.setCarName(rs.getString("carName"));
				dto.setEnginPrice(rs.getInt("enginPrice"));
				dto.setTirePrice(rs.getInt("tirePrice"));
				dto.setOptName(rs.getString("optName"));
				dto.setOptPrice(rs.getInt("optPrice"));
			}
			rs.close();
			ppst.close();
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
	<h1>수정하기 Page</h1><br><br>
  	
  	<form action="/Curr03_OracleDB/j09_modCarConn.jsp" method="post">
  		<table>
  			<tr>
  				<td class="YY">번 호</td>
  				<td class="ZZ"><%= dto.getNum() %>
  					<input type="hidden" name="num" 
  						value="<%= dto.getNum() %>">
  				</td>
  			</tr>
  			<tr>
  				<td class="YY">자동차 이름</td>
  				<td class="ZZ"><input type="text" name="carName" 
  						placeholder="<%= dto.getCarName() %>"></td>
  			</tr>
  			<tr>
  				<td class="YY">엔진 가격</td>
  				<td class="ZZ"><input type="text" name="enginPrice" 
  						placeholder="<%= dto.getEnginPrice() %>"></td>
  			</tr>
  			<tr>
  				<td class="YY">타이어 가격</td>
  				<td class="ZZ"><input type="text" name="tirePrice" 
  						placeholder="<%= dto.getTirePrice() %>"></td>
  			</tr>
  			<tr>
  				<td class="YY">옵션 이름</td>
  				<td class="ZZ"><input type="text" name="optName" 
  						placeholder="<%= dto.getOptName() %>"></td>
  			</tr>
  			<tr>
  				<td class="YY">옵션 가격</td>
  				<td class="ZZ"><input type="text" name="optPrice" 
  						placeholder="<%= dto.getOptPrice() %>"></td>
  			</tr>
  			<tr>
  				<td colspan="2">
  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  					<input style="font-size: 20px; font-family: '210 다락방'; 
							border-color: red;"
  							type="reset" value="다시쓰기">
  					<input style="font-size: 20px; font-family: '210 다락방'; 
							border-color: blue;"
							type="submit" value="내용저장하기">
  				</td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>