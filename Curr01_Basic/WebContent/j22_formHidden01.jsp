<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>@@Form Hidden@@</title>
  </head>
  <body>
	<%-- 
		input 태그의 hidden
		- 파라미터 정보를 화면상에서 숨길 때 사용
	--%>
	
	<h2>인사 정보</h2>
	
	<form action="/Curr01_Basic/j22_formHidden02.jsp" method="post">
		
		<input type="hidden" name="works" value="수정해주세요"> <br>
		<%-- <input type="hidden">의 용도 : 단순 메모뿐아니라 정보를 주고받을 수 있다. --%>
		이름 : <input type="text" name="name" autofocus="autofocus"> <br>
		나이 : <input type="text" name="age"> <br>
		
		<input type="submit" value="전송하기">
	</form>
  </body>
</html>