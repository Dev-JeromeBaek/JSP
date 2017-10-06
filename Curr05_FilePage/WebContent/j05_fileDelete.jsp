<%@page import="java.io.File"%>
<%@page import="dto.FileDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="module.jdbcConnector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  
  	<h2>파일 삭제</h2>
  	
	<%
		String msg = null;
		try {
			
			Connection conn = jdbcConnector.getConnection();
			
			String sql = "select sysName from t_updown where num=?";
			
			PreparedStatement ppst = conn.prepareStatement(sql);
			int num = Integer.parseInt(request.getParameter("num"));
			ppst.setInt(1, num);
			
			ResultSet rs = ppst.executeQuery();
			if(rs.next())
			{
				String sysName = rs.getString("sysName");
				
				String upPath = new FileDTO().getUpPath();
				File ff = new File(upPath + "\\" + sysName);
				
				if(ff.exists())
				{
					ff.delete();
					msg = "서버에서 파일 삭제 완료\\n";
				}
				
				sql = "delete from t_updown where num=?";
				ppst = conn.prepareStatement(sql);
				ppst.setInt(1, num);
				
				int res = ppst.executeUpdate();
				msg += res > 0 ? "DB 정보 삭제 완료" : "DB 삭제 실패";
						
			}
			rs.close();
			ppst.close();
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href="/Curr05_FilePage/j03_fileList.jsp";
	</script>
  </body>
</html>