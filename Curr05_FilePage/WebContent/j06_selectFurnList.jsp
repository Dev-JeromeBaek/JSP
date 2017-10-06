<%@page import="dto.FileDTO"%>
<%@page import="dao.hpDAO"%>
<%@page import="dto.hpDTO"%>
<%@page import="java.util.ArrayList"%>
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
  </head>
  <body>
	<%
		ArrayList<hpDTO> listc = new hpDAO().selectList();
	%>
	
	<h2>Furniture Shop(List)</h2>
	
	<form action="">
		<table border="1" style="text-align: center;">
			<tr>
	<%
		if(session.getAttribute("adminLogin") != null)
		{
			String id = (String)session.getAttribute("adminLogin");
			out.print("<td colspan='9' style='text-align: center; border: 0px;'>"
						+ id + "님 로그인 중입니다.&nbsp;&nbsp;&nbsp;&nbsp;");
			out.print("<a href='/Curr05_FilePage/j06_logout.jsp'>" 
							+ "로그아웃</a></td>");
	%>
			</tr>
			<tr>
				<td colspan="9">
					<a href="/Curr05_FilePage/j06_insertFurn.jsp">파일업로드</a>
				</td>
			</tr>
			<tr>
				<td>번 호</td>
				<td>이 름</td>
				<td>가 격</td>
				<td>원산지</td>
				<td>orgName</td>
				<td>sysName</td>
				<td>옵 션</td>
				<td>설 명</td>
				<td>사진보기</td>
			</tr>
	<%
			if(listc != null)
			{
				for(hpDTO each : listc)
				{
	%>
				<tr>
					<td><%= each.getNum() %></td>
					<td><%= each.getName() %></td>
					<td><%= each.getPrice() %></td>
					<td><%= each.getContOrigin() %></td>
					<td><%= each.getOrgName() %></td>
					<td><%= each.getSysName() %></td>
					<td><%= each.getOpt() %></td>
					<td><%= each.getMemo() %></td>
					<td>
	<%
		String expName = each.getSysName().substring(each.getSysName().lastIndexOf("."));
					if(expName.equalsIgnoreCase(".jpg") 
							|| expName.equalsIgnoreCase(".png")
							|| expName.equalsIgnoreCase(".gif")
							|| expName.equalsIgnoreCase(".bmp"))
					{
	%>
				<a href="/Curr05_FilePage/j06_selectFurnOne.jsp?num=<%= each.getNum() %>">
					<img alt="상품 이미지를 준비중입니다." 
						src="/Curr05_FilePage/hpFiles/<%= each.getSysName() %>"
						style="width:200px; height: 150px;">
				</a>
	<%
					} else {
						out.print("그림파일이 아닙니다.");
					}
					out.print("</td></tr>");
				}
			}
	%>			
		</table>
	<%
		} else {
			out.print("&nbsp;&nbsp;&nbsp;"
						+ "로그인 후 이용 가능합니다."
						+ "<br><br>" 
						+ "&nbsp;&nbsp;&nbsp;&nbsp;"
						+ "<a href='/Curr05_FilePage/j06_login.jsp'>"
						+ "로그인페이지로 이동하기</a>");
		}
	%>
	</form>
  </body>
</html>