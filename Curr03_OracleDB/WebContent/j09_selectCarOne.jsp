<%@page import="java.util.ArrayList"%>
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
    	text-align: center; 
    }
    </style>
   	<script type="text/javascript">
		function goPage(pageName, num) {
		    var frm = document.selectCarOneForm;
		    if(num != null)
		    {
		    	frm.num.value = num;
		    }
		    frm.action = "/Curr03_OracleDB/j09_" + pageName + ".jsp";
			frm.method = "post";
			frm.submit();
		}
	</script>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		String rcvNum = request.getParameter("num");
		int num = 0;
		String carName = null;
		if(rcvNum != null){
			num = Integer.parseInt(rcvNum);
		} else {
			carName = request.getParameter("carName");
		}
		CarDTO dto = null;
		ArrayList<CarDTO> listc = null;
		String out_Msg = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("[selectCarOne] : Driver Load Comp");
			
			String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
			String user = "aabb";
			String password = "aabb";
			
			Connection conn = 
					DriverManager.getConnection(url, user, password);
			System.out.println("[selectCarOne] : Connection Comp");
			
			String sql;
			PreparedStatement ppst;
			ResultSet rs;
			if(num != 0) {
				sql = "select * from hw_car where num=?";
				
				ppst = conn.prepareStatement(sql);
				ppst.setInt(1, num);
				
				rs = ppst.executeQuery();
				
			} else {
				sql = "select * from hw_car";
				ppst = conn.prepareStatement(sql);
				rs = ppst.executeQuery();
				while(rs.next())
				{
					if(rs.getString("carName").equals(carName))
					{
						listc = new ArrayList();
						sql = "select * from hw_car where carName=?";
						ppst = conn.prepareStatement(sql);
						ppst.setString(1, carName);
						rs = ppst.executeQuery();
						while(rs.next())
						{
							dto = new CarDTO();
							dto.setNum(rs.getInt("num"));
							dto.setCarName(rs.getString("carName"));
							dto.setEnginPrice(rs.getInt("enginPrice"));
							dto.setTirePrice(rs.getInt("tirePrice"));
							dto.setOptName(rs.getString("optName"));
							dto.setOptPrice(rs.getInt("optPrice"));
							dto.setTotalPrice(rs.getInt("totalPrice"));
							listc.add(dto);
							out_Msg = null;
						}
					} else {
						out_Msg = "검색하신 자동차 정보가 없습니다.";
					}
				}
			}
			
			while(rs.next())
			{
				dto = new CarDTO();
				dto.setNum(rs.getInt("num"));
				dto.setCarName(rs.getString("carName"));
				dto.setEnginPrice(rs.getInt("enginPrice"));
				dto.setTirePrice(rs.getInt("tirePrice"));
				dto.setOptName(rs.getString("optName"));
				dto.setOptPrice(rs.getInt("optPrice"));
				dto.setTotalPrice(rs.getInt("totalPrice"));
			}
			rs.close();
			ppst.close();
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		if(listc == null && num != 0)
		{
	%>
		<h1>[<%= dto.getNum() %>] <%= dto.getCarName() %> 상세보기 Page</h1> 
		<br><br>
  	
		<form name="selectCarOneForm">
			<table>
				<tr>
					<td class="YY">번 호</td>
					<td class="ZZ"><%= dto.getNum() %></td>
				</tr>
				<tr>
					<td class="YY">자동차 이름</td>
					<td class="ZZ"><%= dto.getCarName() %></td>
				</tr>
				<tr>
					<td class="YY">엔진 가격</td>
					<td class="ZZ"><%= dto.getEnginPrice() %></td>
				</tr>
				<tr>
					<td class="YY">타이어 가격</td>
					<td class="ZZ"><%= dto.getTirePrice() %></td>
				</tr>
				<tr>
					<td class="YY">옵션 이름</td>
					<td class="ZZ"><%= dto.getOptName() %></td>
				</tr>
				<tr>
					<td class="YY">옵션 가격</td>
					<td class="ZZ"><%= dto.getOptPrice() %></td>
				</tr>
				<tr>
					<td class="YY">총 구매 가격</td>
					<td class="ZZ"><%= dto.getTotalPrice() %></td>
				</tr>
				<tr>
					<td colspan="2">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="hidden" name="num">
						<input type="button" value="목록보기"
								style="font-size: 20px; font-family: '210 다락방'; 
								border-color: red;" 
								onclick="goPage('selectCarList', null)">
						<input type="button" value="수정하기"
								style="font-size: 20px; font-family: '210 다락방'; 
								border-color: green;" 
								onclick="goPage('modCarOne', <%= num %>)">
						<input type="button" value="삭제하기"
								style="font-size: 20px; font-family: '210 다락방'; 
								border-color: blue;" 
								onclick="goPage('delCarConn', <%= num %>)">
					</td>
				</tr>
			</table>
		</form>
	<%
		} else if(out_Msg != null){
	%>
			<script type="text/javascript">
				alert("<%= out_Msg %>");
				location.href = "/Curr03_OracleDB/j09_home.jsp";
			</script>
	<%
		} else {
			
	%>
			<h1>[<%= carName %>] 검색 리스트 Page</h1><br><br>
  	
			<form>
				<table border="1" style="text-align: center;">
					<tr>
						<td>번 호</td>
						<td>자동차 이름</td>
						<td>엔진 가격</td>
						<td>타이어 가격</td>
						<td>옵션 이름</td>
						<td>옵션 가격</td>
						<td>총 구매 가격</td>
					</tr>
	<%
				for(CarDTO each : listc)
				{
	%>
					<tr>
						<td>
							<a href="/Curr03_OracleDB/j09_selectCarOne.jsp?num=<%= each.getNum() %>">
							<%= each.getNum() %>
							</a>
						</td>
						<td><%= each.getCarName() %></td>
						<td><%= each.getEnginPrice() %></td>
						<td><%= each.getTirePrice() %></td>
						<td><%= each.getOptName() %></td>
						<td><%= each.getOptPrice() %></td>
						<td><%= each.getTotalPrice() %></td>
					</tr>
	<%
				}
	%>
				</table>
			</form>
	<%
		}
	%>

  </body>
</html>