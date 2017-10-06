<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <%
    	String msg = (String)request.getAttribute("msg");
    	
    %>
    <script type="text/javascript">
    
    	function goPage(viewName, works) {
    		var frm = document.insertOneForm;
//     		frm.works.value = works;
    		frm.viewName.value = viewName;
    		
    		frm.action = "/HW03/mem/" + works;
    		frm.method = "post";
    		frm.submit();
    	}
    	
    	var scrMsg = "<%= msg %>";
			if(scrMsg != "null") {
    	   		alert(scrMsg);
    	    }
			
    </script>
  </head>
  <body>
	
	<h2>회원 정보 입력</h2>
	
	<form name="insertOneForm">
		<table border="1" style="text-align: center;">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"
						placeholder="아이디 입력"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw"
						placeholder="비밀번호 입력"></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name"
						placeholder="이름 입력"></td>
			</tr>
			<tr>
				<td>나 이</td>
				<td><input type="text" name="age"
						placeholder="나이 입력"></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="date" name="birth"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" name="email"
						placeholder="****@***.**형식 유지"></td>
			</tr>
			<tr>
				<td colspan="2">
<!-- 					<input type="button" value="돌아가기" onclick="goPage('home', 'cancel')"> -->
					<input type="button" value="작성완료" onclick="goPage('selectListPage', 'insertInfo')">
<!-- 					<input type="hidden" name="works"> -->
					<input type="hidden" name="viewName">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>