<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <%
    	int num = Integer.parseInt(request.getParameter("num"));
    %>
    <script type="text/javascript">
    	function popClose() {
    		self.close();
    	}
    	function delContinue() {
    		var frm = document.delFrm;
    		var id = frm.id.value;
    		var pw = frm.pw.value;
    		if(id == "abab" && pw == "abab") {
    			opener.location.href = "/Curr02_Basic/con?works=del&view=showAll&num=<%= num %>";
    			self.close();
    		} else {
    			alert("교사 정보가 일치하지 않습니다.");
    			self.close();
    		}
    	}
    </script>
  </head>
  <body>
  
	<form name="delFrm">
		<table border="1" style="text-align: center; width: 400px;" >
			<tr>
				<td colspan="2">
					삭제를 진행하시려면 교사의 '아이디'와 '비밀번호'가 필요합니다.
				</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" placeholder="교사 아이디를 입력하세요.">
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw" placeholder="교사 비밀번호를 입력하세요.">
			</tr>
			<tr>
				<td colspan="2">
					
					<input type="hidden" name="works">
					<input type="hidden" name="view">
					<input type="hidden" name="num" value="<%= num %>">
					<input type="button" value="삭제하기" onclick="delContinue()">
					<input type="button" value="닫기" onclick="popClose()">
				</td>
			</tr>
	
		</table>
	</form>
  </body>
</html>