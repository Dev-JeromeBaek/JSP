<%@page import="dao.hpDAO"%>
<%@page import="dto.hpDTO"%>
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
    	function goPage(pageName)
    	{
	    		var frm = document.selectOneForm;
    			frm.action = "/Curr05_FilePage/j06_"+pageName+".jsp";
    			frm.method = "post";
    			frm.submit();
    	}
    </script>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println("AA : " + num);
		hpDTO dto = new hpDAO().selectOne(num);
	%>
	
	<h2>Furniture Shop(상세 정보)</h2>
	
	<form name="selectOneForm">
		<table border="1" style="text-align: center;">
			<tr>
	<%
		if(session.getAttribute("adminLogin") != null)
		{
			String id = (String)session.getAttribute("adminLogin");
			out.print("<td colspan='2' style='text-align: center; border: 0px;'>"
						+ id + "님 로그인 중입니다.&nbsp;&nbsp;&nbsp;&nbsp;");
			out.print("<a href='/Curr05_FilePage/j06_logout.jsp'>" 
							+ "로그아웃</a></td>");
	%>
			</tr>
			<tr>
				<td>번 호</td>
				<td><%= dto.getNum() %></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><%= dto.getName() %></td>
			</tr>
			<tr>
				<td>가 격</td>
				<td><%= dto.getPrice() %></td>
			</tr>
			<tr>
				<td>원산지</td>
				<td><%= dto.getContOrigin() %></td>
			</tr>
			<tr>
				<td>orgName</td>
				<td><%= dto.getOrgName() %></td>
			</tr>
			<tr>
				<td>sysName</td>
				<td><%= dto.getSysName() %></td>
			</tr>
			<tr>
				<td>옵 션</td>
				<td><%= dto.getOpt() %></td>
			</tr>
			<tr>
				<td>설 명</td>
				<td><%= dto.getMemo() %></td>
			</tr>
			<tr>
				<td>사진보기</td>
				<td>
	<%
		String expName =dto.getSysName().substring(dto.getSysName().lastIndexOf("."));
					if(expName.equalsIgnoreCase(".jpg") 
							|| expName.equalsIgnoreCase(".png")
							|| expName.equalsIgnoreCase(".gif")
							|| expName.equalsIgnoreCase(".bmp"))
					{
	%>
					<img alt="상품 이미지를 준비중입니다." 
						src="/Curr05_FilePage/hpFiles/<%= dto.getSysName() %>"
						style="width: 200px; height: 150px;">
	<%
					}
	%>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="hidden" name="num" value="<%= num %>">
					<input type="button" value="정보수정"
							onclick="goPage('updateFurn')">
					<input type="button" value="정보삭제"
							onclick="goPage('deleteFurn')">
					<input type="button" value="목록보기"
							onclick="goPage('selectFurnList')">		
				</td>
			</tr>
		</table>
	</form>
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
  </body>
</html>