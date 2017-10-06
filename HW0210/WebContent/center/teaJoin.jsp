<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	function joinFunc(pageName) {
    		var ff = document.JoinForm;
    		if(ff.tid.value == "") 
    		{
    			alert("아이디를 입력하세요");
    			ff.tid.focus();
    		} else if(ff.tpw.value == "") {
    			alert("비밀번호를 입력하세요");
    			ff.tpw.focus();
    		} else if(ff.pwcheck.value == "") {
    			alert("비밀번호를 다시한번 입력하세요");
    			ff.pwcheck.focus();
    		} else if(ff.tname.value == "") {
    			alert("이름을 입력하세요");
    			ff.tname.focus();
    		} else if(ff.tpw.value != ff.pwcheck.value) {
    			alert("비밀번호가 다릅니다. 다시 확인하세요.");
    			ff.pwcheck.focus();
    		} else {
	    		ff.action = "/HW0210/a/" + pageName;
	    		ff.method = "post";
	    		ff.submit();
    		}
    	}
    	
    </script>
  </head>
  <body>
  	<%
		if(session.getAttribute("tLogin") == null)
		{
			teaDTO dto = (teaDTO)session.getAttribute("tLogin");
					
	%>
  	<form name="JoinForm">
	<fieldset style="width: 400px;">
	<legend style="font-size: 50px;">Join</legend>
		<table style="width: 100%; text-align: center;">
			 <tr>
			 	<td>아이디</td>
			 	<td align="center"><input type="text" 
			 	name="tid"></td>
			 </tr>
			 <tr>
			 	<td>비밀번호</td>
			 	<td align="center"><input type="password" 
			 	name="tpw"></td>
			 </tr>
			 <tr>
			 	<td>비밀번호확인</td>
			 	<td align="center"><input type="password" 
			 	name="pwcheck"></td>
			 </tr>
			 <tr>
			 	<td>이 름</td>
			 	<td align="center"><input type="text" 
			 	name="tname"></td>
			 </tr>
			 <tr>
			 	<td>학년 / 반</td>
			 	<td align="center">
			 		<%--학년선택 --%>
			 		<select name="thak">
			 			<option value="1">1학년</option>
			 			<option value="2">2학년</option>
			 			<option value="3">3학년</option>
			 		</select>
			 		&nbsp;&nbsp;
			 		<%--반선택 --%>
			 		<select name="tban">
			 		<% for(int i=1; i<=10; i++) { %>
			 			<option value="<%= i %>"><%= i %>반</option>
			 		<% } %>
			 		</select>
			 	</td>
			 </tr>
		</table>
		<p>
	 		<input type="button" value="가입취소"
	 				onclick="joinFunc('home')">
	 		<input type="button" value="가입완료"
	 				onclick="joinFunc('joinOk')">
		</p>
	</fieldset>
  	</form>
  	<%
		} else {
	%>
		<h3>로그인 되어있는 상태에선 회원가입을 진행할 수 없습니다.</h3>
	<%
		}
	%>
  </body>
</html>