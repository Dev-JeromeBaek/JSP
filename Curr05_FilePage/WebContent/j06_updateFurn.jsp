<%@page import="dao.hpDAO"%>
<%@page import="dto.hpDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <%
  		request.setCharacterEncoding("UTF-8");
  		int num = Integer.parseInt(request.getParameter("num"));
  		hpDTO dto = new hpDAO().updateFurn1st(num);
  	%>
    <style type="text/css">
    body {
		margin-top: 100px;
		margin-left: 100px;
		width: 70%;
	}
    </style>
    <script type="text/javascript">
    	function cancelUp() {
    		var frm = document.updateForm;
    		frm.action = "/Curr05_FilePage/j06_selectFurnOne.jsp";
    		frm.method = "post";
    		frm.submit();
    	}
    	
    	function okUP() {
    		var frm = document.updateForm;
    		alert(frm.upfile.value);
    		if(frm.upfile.value == "")
    		{
    			frm.orgName.value = <%= dto.getOrgName() %>
    			frm.sysName.value = <%= dto.getSysName() %>
    		}
    		frm.action = "/Curr05_FilePage/j06_updateConn.jsp";
    		frm.method = "post";
    		frm.submit();
    	}
    </script>
  </head>
  <body>
  	
  	<h2>Furniture Shop(정보 수정)</h2>
	
	<form name="updateForm">
		<table border="1" style="text-align: center;">
			<tr>
	<%
			if(session.getAttribute("adminLogin") != null)
			{
				String id = (String)session.getAttribute("adminLogin");
	%>
				<td colspan="2" style="border: 0px;">
					<%= id %>님 로그인 중입니다.&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="/Curr05_FilePage/j06_logout.jsp">로그아웃</a>
				</td>
			</tr>
			<tr>
				<td>번 호</td>
				<td><%= dto.getNum() %></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td>
					<input type="text" name="name"
						placeholder="<%= dto.getName() %>">
				</td>
			</tr>
			<tr>
				<td>가 격</td>
				<td>
					<input type="text" name="price"
						placeholder="<%= dto.getPrice() %>">
				</td>
			</tr>
			<tr>
				<td>원산지</td>
				<td>
					<input type="text" name="contorigin"
						placeholder="<%= dto.getContOrigin() %>">
				</td>
			</tr>
			<tr>
				<td>사진 선택</td>
				<td>
					<input type="file" name="upfile">
				</td>
			</tr>
			<tr>
				<td>옵 션</td>
				<td>
					<input type="text" name="opt"
						placeholder="<%= dto.getOpt() %>">
				</td>
			</tr>
			<tr>
				<td>설 명</td>
				<td>
					<textarea rows="5" cols="45" name="memo"
						placeholder="<%= dto.getMemo() %>">
					</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="hidden" name="num" value="<%= dto.getNum() %>">
					<input type="hidden" name="orgName">
					<input type="hidden" name="sysName">
					<input type="button" value="수정취소"
							onclick="cancelUp()">
					<input type="button" value="저장하기"
							onclick="okUp()">
				</td>
			</tr>
		</table>
	</form>
	<%
			} else {
	%>
				&nbsp;&nbsp;&nbsp;
				로그인 후 이용 가능합니다.
				<br><br>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="/Curr05_FilePage/j06_login.jsp">
					로그인페이지로 이동하기
				</a>
	<%
			}
	%>
  </body>
</html>