<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="dto.CarDTO"%>
<%@page import="java.util.ArrayList"%>
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
	.numA:VISITED {
		text-decoration: none;
		color: fuchsia;
	}
	.numA:HOVER {
		text-decoration: none;
		color: fuchsia;
	}
	.numA:LINK {
		text-decoration: none;
		font-size: 20px;
		color: fuchsia;
	}
	.sortA:VISITED {
		text-decoration: none;
		color: blue;
	}
	.sortA:HOVER {
		text-decoration: none;
		color: blue;
	}
	.sortA:LINK {
		text-decoration: none;
		color: blue;
	}
	.addCarA:VISITED {
		text-decoration: none;
		color: red;
	}
	.addCarA:HOVER {
		text-decoration: none;
		color: red;
	}
	.addCarA:LINK {
		text-decoration: none;
		font-size: 25px;
		color: red;
	}
	.mm:VISITED {
		text-decoration: none;
		color: green;
	}
	.mm:HOVER {
		text-decoration: none;
		color: green;
	}
	.mm:LINK {
		text-decoration: none;
		font-size: 20px;
		color: green;
	}
    </style>
  </head>
  <body>
	
	<%
		request.setCharacterEncoding("UTF-8");
		String sortCarList = request.getParameter("sortCarList");
		ArrayList<CarDTO> listc = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("[carList] : Driver Load Comp");
			
			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
			String user = "aabb";
			String password = "aabb";
			
			Connection conn = 
					DriverManager.getConnection(url, user, password);
			System.out.println("[carList] : Connection Comp");
			System.out.println("BB : " + sortCarList);
			String sql;
			PreparedStatement ppst;
			ResultSet rs;
			if(sortCarList == null) 
			{
				sql = "select * from hw_car order by num desc";
				ppst = conn.prepareStatement(sql);
				rs = ppst.executeQuery();
			} else {
				if(sortCarList.equals("nameSort")){
					sql = "select * from hw_car order by carName";
				} else if(sortCarList.equals("costLowSort")) {
					sql = "select * from hw_car order by totalPrice";
				} else if(sortCarList.equals("costHighSort")) {
					sql = "select * from hw_car order by totalPrice desc";
				} else {
					sql = "select * from hw_car order by num desc";
				}
				ppst = conn.prepareStatement(sql);
				rs = ppst.executeQuery();
			}
			
			while(rs.next())
			{
				CarDTO dto = new CarDTO();
				dto.setNum(rs.getInt("num"));
				dto.setCarName(rs.getString("carName"));
				dto.setTotalPrice(rs.getInt("totalPrice"));
				
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
	
	<h1>목록보기 Page</h1>
	<a class="mm" style="margin-left: 400px;" 
		href="/Curr03_OracleDB/j09_home.jsp"> 메인 Page 이동하기</a>
	<br><br>
  	
  	<form name="selectCarListForm">
  		<table style="width: 600px; text-align: center;" border="1">
  			<tr>
  			<tr>
  				<td colspan="3" style="text-align: right;">
  					<a class="sortA" style="font-size: 12px;" 
  						href = "/Curr03_OracleDB/j09_selectCarList.jsp?sortCarList=newSort">
  						 최신순</a>
  					<a class="sortA" style="font-size: 12px;" 
  						href = "/Curr03_OracleDB/j09_selectCarList.jsp?sortCarList=nameSort">
  						 이름정렬</a>
  					<a class="sortA" style="font-size: 12px;" 
  						href = "/Curr03_OracleDB/j09_selectCarList.jsp?sortCarList=costLowSort">
  						 가격낮은순</a>
  					<a class="sortA" style="font-size: 12px;" 
  						href = "/Curr03_OracleDB/j09_selectCarList.jsp?sortCarList=costHighSort">
  						 가격높은순</a>&nbsp;&nbsp;
  					<a class="addCarA" href = "/Curr03_OracleDB/j09_insertCar.jsp" class="a">
  						 추가입력하기</a>
  				</td>
  			</tr>
  			<tr>
  				<td>번 호</td>
  				<td>자동차 이름</td>
  				<td>총 구매 가격</td>
  			</tr>
  	<%
  			if(listc != null)
  			{
  				for(CarDTO each : listc)
  				{
  	%>
  			<tr>
  				<td>
  					<a class="numA" href="/Curr03_OracleDB/j09_selectCarOne.jsp?num=<%= each.getNum() %>"
  						class="b"><%= each.getNum() %>
  					</a>
  				</td>
  				<td><%= each.getCarName() %></td>
  				<td><%= each.getTotalPrice() %></td>
  			</tr>
  	<%				
  				}
  			}
  	%>
  		</table>
  	</form>
  	
  </body>
</html>