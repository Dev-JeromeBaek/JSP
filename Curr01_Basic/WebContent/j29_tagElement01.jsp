<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<h2>입력 태그 별 데이터의 송수신 이용</h2>
	
	<form action="/Curr01_Basic/j29_tagElement02.jsp" method="post">
		<table border="1" style="text-align: center;">
			<tr>
				<td>성 별</td>
				<td><input type="radio" name="gender" value="남자" checked="checked">남자
					<input type="radio" name="gender" value="여자">여자
					<%-- value="남자"를 생략해도 뒤의 "남자" 값에 따라 value가 전달되지만 형식적으로는 value="남자"를 적어주는 것이 일반적이다.--%>
			</tr>
			<tr>
				<td>이메일</td>
				<td><select name="email" required="required"> <%--required : 필수 입력값 --%>
						<option>google.com</option>
						<option>nate.com</option>
						<option>naver.com</option>
					</select>
			</tr>
			<tr>
				<td>취 미</td>
				<td>
					<input type="checkbox" name="hobby" value="놀기">놀기 &nbsp;
					<input type="checkbox" name="hobby" value="먹기">먹기 &nbsp;
					<input type="checkbox" name="hobby" value="자기">자기
				</td>
			</tr>
			<tr>
				<%-- textarea 입력 시 줄바꿈이 \n으로 적용됨 --%>
				<td>메 모</td>
				<td>
					<textarea rows="5" cols="45" name="memo"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="전송하기">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>