<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>ahref 값 넘기고 받기(Send Page)</title>
  </head>
  <body>
	
	<h2>a 태그 이용 (전송페이지)</h2>
<%-- a href=""클릭할 수 있는 글씨의 상태를 만들어줌 --%>
	
	<%-- 
		1. href에 입력된 값을 URL로 설정한 후 자동 엔터됨
			(화면 이동 기능)
		2. 파라미터 정보 전송도 가능
		3. URL을 통한 Get방식으로 전송
		4. 한글 정보에 대한 인코딩 필요 시  server.xml 설정 필요
			(URIEncoding="UTF-8")
	--%>
	
	<a href="/Curr01_Basic/j17_ahref02.jsp">02 페이지로 이동</a>
	<br>
	
	<a href="/Curr01_Basic/j17_ahref02.jsp?id=abc&pw=123&name=둘리">02 페이지로 값과 이동</a>
	
	
  </body>
</html>