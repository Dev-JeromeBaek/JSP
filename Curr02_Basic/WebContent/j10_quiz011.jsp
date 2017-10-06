<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><title>Insert title here</title>
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
	
	<h2>인사 정보 입력</h2>
	
	<form action="/Curr02_Basic/j10_quiz021.jsp" method="post">
		<table border="1" style="text-align: center;">
			<tr>
				<td>이 름</td>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>나 이</td>
				<td>
					<input type="text" name="age">
				</td>
			</tr>	
			<tr>
				<td colspan="2">
					<input type="submit" value="전송">
				</td>			
			</tr>
		</table>
	</form>
	
	
	

</body>
</html>












