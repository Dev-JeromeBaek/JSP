<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    
    	function saveInfo() {
    		var frm = document.insertFrm;
    		frm.works.value = "insertWork";
    		frm.view.value = "home";
    		frm.action = "/Curr02_Basic/cont";
    		frm.method = "post";
    		frm.submit();
    	}
    	
    	function goHome() {
    		var frm = document.insertFrm;
    		frm.works.value = "moveWork";
    		frm.view.value = "home";
    		frm.action = "/Curr02_Basic/cont";
    		frm.method = "post";
    		frm.submit();
    	}
    	
    </script>
  </head>
  <body>
	<form name="insertFrm">
		<table border="1" style="text-align: center; width: 400px;" >
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>국 어</td>
				<td><input type="text" name="kor"></td>
			</tr>
			<tr>
				<td>영 어</td>
				<td><input type="text" name="eng"></td>
			</tr>
			<tr>
				<td>수 학</td>
				<td><input type="text" name="math"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="hidden" name="works">
					<input type="hidden" name="view">
					<input type="reset" value="다시쓸거야">
					<input type="button" value="저장할거야" onclick="saveInfo()">
					<input type="button" value="집에갈거야" onclick="goHome()">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>