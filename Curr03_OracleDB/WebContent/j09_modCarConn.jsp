<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Yeob's Home</title>
    <style type="text/css">
    body {
		margin-top: 100px;
		margin-left: 100px;
		width: 70%;
	}
    </style>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		String out_Msg = null;
		int num = Integer.parseInt(request.getParameter("num"));
		String carName = request.getParameter("carName");
		int enginPrice = Integer.parseInt(request.getParameter("enginPrice"));
		int tirePrice = Integer.parseInt(request.getParameter("tirePrice"));
		String optName = request.getParameter("optName");
		if(optName.equals(""))
		{
			optName = "X";
		}
		String reqOptPrice = request.getParameter("optPrice");
		int optPrice = 0;
		if(!reqOptPrice.equals(""))
		{
			optPrice = Integer.parseInt(reqOptPrice);
		}
		int totalPrice = enginPrice + tirePrice + optPrice;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("[modCarConn] : Driver Load Comp");
			
			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
			String user = "aabb";
			String password = "aabb";
			
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("[modCarConn] : Connection Comp");
			
			String sql = 
					"update hw_car set carName=?, enginPrice=?, tirePrice=?, optName=?, optPrice=?, totalPrice=? where num=?";
			
			PreparedStatement ppst = conn.prepareStatement(sql);
			
			ppst.setString(1, carName);
			ppst.setInt(2, enginPrice);
			ppst.setInt(3, tirePrice);
			ppst.setString(4, optName);
			ppst.setInt(5, optPrice);
			ppst.setInt(6, totalPrice);
			ppst.setInt(7, num);
			
			int res = ppst.executeUpdate();
			
			out_Msg = res > 0 ? "수정 완료" : "수정 실패";
			
			ppst.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<script type="text/javascript">
		alert("<%= out_Msg %>");
		if("<%= out_Msg %>" == "수정 완료")
		{
			location.href = "/Curr03_OracleDB/j09_selectCarOne.jsp?num=<%= num %>";
		} else {
			location.href = "/Curr03_OracleDB/j09_selectCarList.jsp";
		}
		
	</script>
	
  </body>
</html>