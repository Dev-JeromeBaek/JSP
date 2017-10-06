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
    	function cancelUp() {
    		var frm = document.insertForm;
    		frm.action = "/Curr05_FilePage/j06_home.jsp";
    		frm.method = "post";
    		frm.submit();
    	}
    	function okUp() {
    		var frm = document.insertForm;
    		frm.action = "/Curr05_FilePage/j06_insertConn.jsp";
    		frm.method = "post";
    		frm.submit();
    	}
    </script>
    
  </head>
  <body>
  
  	<h2>Furniture Shop(insert)</h2>
	
	<form name="insertForm" enctype="multipart/form-data">
		<table border="1" style="text-align: center;">
			<tr>
	<%
		if(session.getAttribute("adminLogin") != null)
		{
			String id = (String)session.getAttribute("adminLogin");
			out.print("<td colspan='2' style='text-align: center;'>"
						+ id + "님 로그인 중입니다.&nbsp;&nbsp;&nbsp;&nbsp;");
			out.print("<a href='/Curr05_FilePage/j06_logout.jsp'>" 
							+ "로그아웃</a></td>");
	%>
			</tr>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>가 격</td>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<td>원산지</td>
				<td><input type="text" name="contorigin"></td>
			</tr>
			<tr>
				<td>사진 선택</td>
				<td><input type="file" name="upfile"></td>
			</tr>
			<tr>
				<td>옵 션</td>
				<td><input type="text" name="opt"></td>
			</tr>
			<tr>
				<td>설 명</td>
				<td>
					<textarea rows="5" cols="45" name="memo"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="업로드취소"
							onclick="cancelUp()">
					<input type="button" value="업로드하기"
							onclick="okUp()">
				</td>
			</tr>
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