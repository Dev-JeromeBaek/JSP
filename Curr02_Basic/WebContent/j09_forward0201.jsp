<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<h2>forward02 : 중간페이지(자바코드)</h2>
	1. 입력된 주소로 자동 이동하며,
		URL에는 입력도니 주소(도착페이지)가 아닌
		forward가 명령된 주소(중간페이지)가 노출된다.
	2. (/)로 시작하는 경로 표현 사용 시
		프로젝트 이름이 자동으로 적용된다.
		('/'로 시작하는 경우 WebContent폴더가 기준이 된다.)
	3. 시작페이지에서 전달하는 request의 파라미터 정보들을
		도착페이지까지 전송됨
	<%
		RequestDispatcher rd = request.getRequestDispatcher("/j09_forward03.jsp");
															// 이동하고 싶은 페이지에 대한 경로
															// '/' 주의할것!!!!!!!!!!!!!
		rd.forward(request, response);	// 보내라..라는 의미의 코드
		// request랑 response만 들어간다!
		// 이 페이지의 request랑 response정보를 다음 페이지까지 넘기는 기능
	%>
  </body>
</html>