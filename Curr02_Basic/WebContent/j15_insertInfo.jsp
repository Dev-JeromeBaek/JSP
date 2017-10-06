<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    
    <script type="text/javascript">
    	function checkAll() {
    		var frm = document.insertFrm;
    		if(frm.name.value == "")
    		{
    			alret("이름을 입력하세요.");
    			frm.name.focus();
    			return false;
    		} else if(frm.kor.value == "") {
    			alret("국어성적을 입력하세요.");
    			frm.kor.focus();
    			return false;
    		} else if(frm.eng.value == "") {
    			alret("영어성적을 입력하세요.");
    			frm.eng.focus();
    			return false;
    		} else if(frm.math.value == "") {
    			alret("수학성적을 입력하세요.");
    			frm.math.focus();
    			return false;
    		} else {
    			return true;
    		}
    	}
    
    </script>
    
  </head>
  <body>
	<fieldset style="width: 300px;">
	<legend>학생 정보 입력</legend>
	<form action="/Curr02_Basic/con" name="insertFrm" method="post"
				onsubmit="return checkAll()">
	<table border="1" style="text-align: center; width: 400px;" >
		<tr>
			<td>이 름</td>
			<td><input type="text" name="name" 
					placeholder="이름을 입력하세요."></td>
		</tr>
		<tr>
			<td>국어 성적</td>
			<td><input type="text" name="kor" 
					placeholder="국어성적을 입력하세요."></td>
		</tr>
		<tr>
			<td>영어 성적</td>
			<td><input type="text" name="eng" 
					placeholder="영어성적을 입력하세요."></td>
		</tr>
		<tr>
			<td>수학 성적</td>
			<td><input type="text" name="math" 
					placeholder="수학성적을 입력하세요."></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
			
				<input type="hidden" name="works" value="insertOne">
				<input type="hidden" name="view" value="home">
				
				<input type="reset" value="다시 입력">
				<input type="submit" value="입력정보 저장">
			</td>
		</tr>
	</table>
	</form>
	</fieldset>
  </body>
</html>