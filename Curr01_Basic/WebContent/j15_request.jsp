<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Request</title>
  </head>
  <body>
  
  	<%-- 
  		1. 요청과 request 객체
  		- 요청 : 클라이언트가 서버에 정보를 전달하는 행위
  				(이동하려는 페이지/ 전달하고 싶은 정보)
  		- 요청으로 인해 전달된 정보를 "파라미터"라고 한다.
  		
  		2. URL을 통한 요청의 예
  		- URL의 역할 : 화면이동 && 정보 전달(Get방식)
  		- 예 :
  			search.11st.co.kr/SearchPrdAction.tmall?method=getTotalSearchSeller&isGnb=Y&prdType=&category=&cmd=&pageSize=&lCtgrNo=&mCtgrNo=&sCtgrNo=&dCtgrNo=&fromACK=&semanticFromGNB=&gnbTag=TO&schFrom=&schFrom=&ID=&ctgrNo=&srCtgrNo=&keyword=&adUrl=&adKwdTrcNo=1201701244475997419&adPrdNo=7549175&targetTab=T&kwd=%B3%EB%C6%AE%BA%CF
  		- URL의 구분
  			search.11st.co.kr -> ip, port
  			/
  			SearchPrdAction.tmall -> 프로젝트 이름 및 파일이름
  			?
  			method=getTotalSearchSeller
  			&
  			isGnb=Y
  			&
  			prdType=
  			&
  			category=
  			&
  			cmd=
  			&
  			pageSize=
  			&
  			lCtgrNo=
  			&
  			mCtgrNo=
  			&
  			sCtgrNo=
  			&
  			dCtgrNo=
  			&
  			fromACK=
  			&
  			semanticFromGNB=
  			&
  			gnbTag=TO
  			&
  			schFrom=
  			&
  			schFrom=
  			&
  			ID=
  			&
  			ctgrNo=
  			&
  			srCtgrNo=
  			&
  			keyword=
  			&
  			adUrl=
  			&
  			adKwdTrcNo=1201701244475997419
  			&
  			adPrdNo=7549175
  			&
  			targetTab=T
  			&
  			kwd=%B3%EB%C6%AE%BA%CF
  			
  			
  		3. request의 파라미터 정보를 획득할 때에는
  			request.getParamether("파라미터이름") 사용
  	--%>
<!--   	http://192.168.121.1:8080/Curr01_Basic/j15_request.jsp?method=getTotalSearchSeller&isGnb=Y&prdType=&category=&cmd=&pageSize=&lCtgrNo=&mCtgrNo=&sCtgrNo=&dCtgrNo=&fromACK=&semanticFromGNB=&gnbTag=TO&schFrom=&schFrom=&ID=&ctgrNo=&srCtgrNo=&keyword=&adUrl=&adKwdTrcNo=1201701244475997419&adPrdNo=7549175&targetTab=T&kwd=%B3%EB%C6%AE%BA%CF -->
  	<%
//  	request 객체 호출 방법 2가지
//   	1. pageContext객체로부터 request 객체를 획득하는 방법 ( 참고용 )
		HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
		
// 		2. JSP 내장 객체 이용
// 		request.
// 		request.getParameter("kwd"); : 반드시 리턴형은 String값으로!!
		String method = request.getParameter("method");
		String kwd = request.getParameter("kwd");
		String adKwdTrcNo = request.getParameter("adKwdTrcNo");
		String keyword = request.getParameter("keyword");
  	%>
  
  	<h1>Request 객체의 이용</h1>
  	
<!--   	다시 해보고 싶으면 URL주소에 http://192.168.121.1:8080/Curr01_Basic/j15_request.jsp?method=getTotalSearchSeller&isGnb=Y&prdType=&category=&cmd=&pageSize=&lCtgrNo=&mCtgrNo=&sCtgrNo=&dCtgrNo=&fromACK=&semanticFromGNB=&gnbTag=TO&schFrom=&schFrom=&ID=&ctgrNo=&srCtgrNo=&keyword=&adUrl=&adKwdTrcNo=1201701244475997419&adPrdNo=7549175&targetTab=T&kwd=%B3%EB%C6%AE%BA%CF-->
<!-- 	입력하시길 바래요ㅎ -->
	method : <%= method %> <br>
	kwd : <%= kwd %> <br>
	adKwdTrcNo : <%= adKwdTrcNo %> <br>
	keyword : <%= keyword %> <br>
	
	keyword == null ? => <%= keyword == null %> <br>
	keyword == "" ? => <%= keyword.equals("") %> <br>
	
	
  </body>
</html>