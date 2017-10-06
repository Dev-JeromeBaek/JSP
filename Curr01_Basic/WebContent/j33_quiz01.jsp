<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Java Script</title>
    <script type="text/javascript">
    	
    	function result() {
			var frm = document.frm;
			var age = frm.age.value;
			
			if(frm.name.value == "")
			{
				alert("이름을 입력해주세요.");
				frm.name.focus();
			} else if(frm.age.value == "") {
				alert("나이를 입력해주세요.")
				frm.age.focus();
			} else {
				if(age > 19) {
					frm.hidData.value = "할인 대상이 아닙니다.";
				} else {
					frm.hidData.value = "할인 대상입니다.";
				}
				frm.action = "/Curr01_Basic/j33_quiz02.jsp";
				frm.method = "post";
				frm.submit();
			}
		}
    
    	function compare() {
			var frm = document.frm;
			var age = frm.age.value;
			
			if(age == "")
			{
				alert("나이를 입력하세요.");
				frm.age.focus();
				return;
			} else if(age > 19) {
				frm.hidData.value = "할인 대상이 아닙니다.";
			} else {
				frm.hidData.value = "할인 대상입니다.";
			}
				
			frm.action = "/Curr01_Basic/j33_quiz03.jsp";
			frm.method = "post";
			frm.submit();
		}
    
    </script>
  </head>
  <body>
	<%-- 
		인사 정보 입력 및 할인 여부 판단 프로그램
		quiz01 : 
			- 이름, 나이 입력
			- 버튼이 2개 존재함
				버튼 1 : 입력 결과를 출력하는 화면(quiz02)
				버튼 2 : 할인 대상 여부 판단 결과 화면(quiz03)
		quiz02 : 입력된 모든 데이터를 출력
		quiz03 : 청소년인 경우 "할인 대상입니다." 출력
				  성인인 경우 "할인 대상이 아닙니다." 출력
		요구사항 : form, table, post
	--%>
	
	<form name="frm">
		<table>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>나 이</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="입력 결과 출력 화면" 
							onclick="javascript:result()">
							
					<input type="hidden" name="hidData">
					<input type="button" value="할일 대상 여부 판단 화면" 
							onclick="javascript:compare()">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>