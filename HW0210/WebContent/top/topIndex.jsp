<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <style type="text/css">
     .x {
    	width: 30%;
    }
    .y {
    	width: 70%;
    }
    </style>
    <script type="text/javascript">
    	function topFunc(pageName) {
    		var ff = document.topIndexForm;
    		ff.action = "/HW0210/a/" + pageName;
    		ff.method = "post";
    		ff.submit();
    	}
    
    </script>
  </head>
  <body>
	<form name="topIndexForm" align="center" >
		<table border="1" align="center" 
			style="width: 100%; height: 190px;
				text-align: center;">
			<%
				if(session.getAttribute("tLogin") != null)
				{
					teaDTO dto = 
							(teaDTO)session.getAttribute("tLogin");
					
			%>
			<tr>
				<td style="width: 80%">
					<h1><a href="/HW0210/a/homeLog">
					학생 정보 관리 프로그램</a></h1>
				</td>
				<td style="width: 20%">
					<p><%= dto.getTname() %> 님 로그인 중입니다.</p>
					<p>
						<input type="button" value="내 정보 보기"
								onclick="topFunc('myInfo')">
						<input type="button" value="로그 아웃" 
								onclick="topFunc('logOut')">
					</p>
				</td>
			
			<%
				} else {
			%>
<!-- 			if조건 달거야 로그인되어있는지 -->
			<tr>
				<td style="width: 80%">
					<h1><a href="/HW0210/a/home">
					학생 정보 관리 프로그램</a></h1>
				</td>
				<td style="width: 20%">
					<table style="width: 100%; height: 100px;" >
						<tr>
							<td class="x">아이디</td>
							<td class="y">
								<input type="text" name="tid">
							</td>
						</tr>
						<tr>
							<td class="x">비밀번호</td>
							<td class="y">
								<input type="password" name="tpw">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="button" value="로그인"
										onclick="topFunc('loginCheck')">
								<input type="button" value="회원가입"
										onclick="topFunc('tJoin')">
							</td>
						</tr>
					</table>
				</td>
			<%
				}
			%>
			</tr>
		</table>
	</form>
  </body>
</html>