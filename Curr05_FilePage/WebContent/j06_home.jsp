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
    	function goPage(pageName) {
    		var frm = document.homeForm;
    		frm.action = "/Curr05_FilePage/j06_"+pageName+".jsp";
    		frm.method = "post";
    		frm.submit();
    	}
    </script>
  </head>
  <body>
  
	<h2>Furniture Shop(Main)</h2>
	
	<form name="homeForm">
		<table style="text-align: center;">
			<tr>
	<%
// 		System.out.println("session : " + session.getAttribute("adminLogin"));
		if(session.getAttribute("adminLogin") != null)
		{
			String id = (String)session.getAttribute("adminLogin");
// 			System.out.println(id);
			out.print("<td style='text-align: center;'>"
						+ id + "님 로그인 중입니다.&nbsp;&nbsp;&nbsp;&nbsp;");
			out.print("<a href='/Curr05_FilePage/j06_logout.jsp'>" 
							+ "로그아웃</a></td>");
	%>
			</tr>
			<tr>
				<td>
					<input type="button" value="상품 업로드"
							onclick="goPage('insertFurn')">
					<input type="button" value="상품 목록보기"
							onclick="goPage('selectFurnList')">
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