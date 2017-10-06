<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="module.jdbcConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="dto.FileDTO"%>
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
  		ArrayList<FileDTO> listc = null;
  	
  		try {
  			Connection conn = jdbcConnector.getConnection();
  			
  			String sql = "select * from t_updown order by num desc";
  			PreparedStatement ppst = conn.prepareStatement(sql);
  			ResultSet rs = ppst.executeQuery();
  			while(rs.next())
  			{
  				FileDTO dto = new FileDTO();
  				dto.setNum(rs.getInt("num"));
  				dto.setWriter(rs.getString("writer"));
  				dto.setTitle(rs.getString("title"));
  				dto.setOrgName(rs.getString("orgName"));
  				dto.setSysName(rs.getString("sysName"));
  				
  				if(listc == null) listc = new ArrayList();
  				listc.add(dto);
  			}
  			
  			rs.close();
  			ppst.close();
  			conn.close();
  			
  		} catch(Exception e) {
  			e.printStackTrace();
  		}
  	%>
  	
  
	<h2>파일 리스트 보기</h2>
	
	<form action="">
		<table border="1" style="text-align: center;">
			<tr>
				<td colspan="7">
					<a href="/Curr05_FilePage/j01_upForm.jsp">파일업로드</a>
				</td>
			</tr>
			<tr>
				<td>번 호</td>
				<td>아이디</td>
				<td>제 목</td>
				<td>orgName</td>
				<td>sysName</td>
				<td>사진보기</td>
				<td>&nbsp;</td>
			</tr>
	<%
			if(listc != null)
			{
				for(FileDTO each : listc)
				{
	%>
				<tr>
					<td><%= each.getNum() %></td>
					<td><%= each.getWriter() %></td>
					<td><%= each.getTitle() %></td>
					<td><%= each.getOrgName() %></td>
					<td><%= each.getSysName() %></td>
					<td>
						<%
							String expName = 
								each.getSysName().substring(
										each.getSysName().lastIndexOf(".")+1);
							if(expName.equalsIgnoreCase("jpg") 
									|| expName.equalsIgnoreCase("png")
									|| expName.equalsIgnoreCase("gif")
									|| expName.equalsIgnoreCase("bmp"))
							{
						%>
							<img alt="죄송합니다.(뻥이야.)" 
								src="/Curr05_FilePage/files/<%= each.getSysName() %>"
									style="width: 200px; height: 150px;">
						<%
							} else {
						%>
								그림 파일이 아닙니다.
						<%
							}
						%>
					</td>
					<td>
						<a href="/Curr05_FilePage/j04_fileDown.jsp?org=<%= each.getOrgName() %>&sys=<%= each.getSysName() %>">
							다운로드</a>&nbsp;
						<a href="/Curr05_FilePage/j05_fileDelete.jsp?num=<%= each.getNum() %>">
							삭제하기</a>
					</td>
					<td></td>
				</tr>
	<%
				}
			}
	%>
		</table>
	</form>
	 
	
  </body>
</html>