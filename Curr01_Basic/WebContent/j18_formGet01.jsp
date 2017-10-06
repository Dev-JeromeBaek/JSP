<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>formGet</title>
  </head>
  <body>
	
	<h2>form태그의 Get 전송 방식 : 전송페이지(form의 기본방식 : Get방식)</h2>
	
	<form action="/Curr01_Basic/j18_formGet02.jsp" method="get">
	
							<!-- name="(파라미터 이름)" -->
		이름 입력 : <input type="text" name="name"> <br>
		나이 입력 : <input type="text" name="age"> <br>
		
		<input type="submit" value="전송하기">
		
		
		
	</form>
  </body>
</html>