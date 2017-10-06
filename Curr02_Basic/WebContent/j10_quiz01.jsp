<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    
    <script type="text/javascript">
    function goQuiz02() {
    	var frm = document.frm;
    	if(frm.name.value == "")
    	{
    		alert("이름을 입력해주세요.");
    		frm.name.focus();
    	} else if(frm.age.value == "") {
    		alert("나이를 입력해주세요.");
    		frm.age.focus();
    	} else {
    		if(frm.age.value > 19)
    		{
    			frm.checkAge.value = frm.name.value + "님 환영합니다.";
    		} else {
    			frm.checkAge.value = "미성년자는 이용할 수 없습니다.";
    		}
    		
    		frm.action = "/Curr02_Basic/j10_quiz02.jsp";
	    	frm.method = "post";
	    	frm.submit();
    	}
    	
    }
    </script>
    
  </head>
  <body>
	
	<%--
		quiz01 : 
			- 이름, 나이 입력
			- quiz02 페이지로 이동
			- form-post && table
		quiz02 :
			- 성인인 경우 quiz03 페이지로 이동
			- 성인이 아닌 경우 quiz04 페이지로 이동
		quiz03 :
			- ***님 환영합니다.
		quiz04 :
			- "미성년자는 이용할 수 없습니다."
				메시지 후 quiz01로 이동
	--%>
	
	<form name="frm">
		<table>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name">
			</tr>
			<tr>
				<td>나 이</td>
				<td><input type="text" name="age">
			</tr>
			<tr>
				<td colspan="2">
					<input type="hidden" name="checkAge">
					<input type="button" value="quiz02로 이동" 
							onclick="goQuiz02()">
				</td>
			</tr>
		</table>
	</form>
	
  </body>
</html>