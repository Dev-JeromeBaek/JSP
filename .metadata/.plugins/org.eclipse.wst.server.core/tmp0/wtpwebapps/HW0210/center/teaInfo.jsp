<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  	<script type="text/javascript">
  		function teaInfoFunc(pageName) {
  			var ff = document.teaInfoForm;
  			ff.action = "/HW0210/a/" + pageName;
  			ff.method = "post";
  			ff.submit();
  		}
  	</script>
  </head>
  <body>
  	<%
		if(session.getAttribute("tLogin") != null)
		{
			teaDTO dto = (teaDTO)session.getAttribute("tLogin");
					
	%>
  	<form name="teaInfoForm">
	<fieldset style="width: 400px;">
	<legend style="font-size: 50px;">
		[<%= dto.getTname() %>]'s Info
	</legend>
		<table border="1" style="text-align: center;">
			<tr>
				<td>번 호</td>
				<td><%= dto.getTnum() %></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><%= dto.getTid() %></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
				<%
					char[] pw = dto.getTpw().toCharArray();
					for(char each : pw)
					{
						out.print("*");
					}
				%>
				</td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><%= dto.getTname() %></td>
			</tr>
			<tr>
				<td>학년 / 반</td>
				<td><%= dto.getThak() %>학년 / <%= dto.getTban() %>반</td>
			</tr>
		</table>
		<p>
			<input type="button" value="정보수정"
					onclick="teaInfoFunc('teaMod')">
			<input type="button" value="회원탈퇴"
					onclick="teaInfoFunc('teaDel')">
		<input type="hidden" name="tnum" value="<%= dto.getTnum() %>">
		</p>
	</fieldset>
  	</form>
  	<%
		} else {
	%>
		<h3>로그인 후 이용 가능합니다.</h3>
	<%
		}
	%>
  </body>
</html>