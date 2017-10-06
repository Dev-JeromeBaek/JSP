<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%--
		EL (Expression Language Tag)
		- 형식 : ${}
		- 변수 개념이 존재하지 않음
		- 연산 및 호출 가능
		- requset 및 session의 getAttribute값을 출력함.
	--%>
	
<!-- 	참고 - 역슬래쉬 이후의 내용을 문자로 인식되서 그대로 출력됨. -->

	<h2>EL태그</h2>
	
	<br>
	\${ 3 > 5 } = ${ 3 > 5 } <br>
	\${ 3 gt 5 } = ${ 3 gt 5 } <br>
	<hr>
	
	\${ 3 >= 5 } = ${ 3 >= 5 } <br>
	\${ 3 ge 5 } = ${ 3 ge 5 } <br>
	<hr>
	
	\${ 3 < 5 } = ${ 3 < 5 } <br>
	\${ 3 lt 5 } = ${ 3 lt 5 } <br>
	<hr>
	
	\${ 3 <= 5 } = ${ 3 <= 5 } <br>
	\${ 3 le 5 } = ${ 3 le 5 } <br>
	<hr>
	
	\${ 3 == 5 } = ${ 3 == 5 } <br>
	\${ 3 eq 5 } = ${ 3 eq 5 } <br>
	<hr>
	
	\${ 3 != 5 } = ${ 3 != 5 } <br>
<%-- 	\${ 3 ne 5 } = ${ 3 ne 5 } <br> --%>
	실행은 되는데 빨간줄이 뜬다..?ㅋㅋ
	
	EL의 삼항연산자 <br>
	\${3 > 5 ? "참" : "거짓" } = ${ 3 > 5 ? "참" : "거짓" } <br>
	\${3 > 5 ? '참' : '거짓' } = ${ 3 > 5 ? '참' : '거짓' } <br>
	
  </body>
</html>