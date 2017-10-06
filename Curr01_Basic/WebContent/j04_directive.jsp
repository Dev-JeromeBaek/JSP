<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- contentType="text/html; : "최종"적으로 클라이언트에게 전달시킬 문서의 종류(타입)을 설정. --%>
    <%-- pageEncoding="UTF-8" : "현재"페이지의 인코딩을 UTF-8로 설정하겠다. --%>
    <!-- HTML 주석 기호 --> 
    <%-- JSP 주석 기호 --%>
    
    <%--
    	뱛
    	Directive
    	- <%@ %> 기호로 표현되는 영역
    	- 종류
    		page	: JSP 페이지에 대한 정보 설정 -> (현재 페이지에 대해서 어떤 설정이 되어있다.)
    		taglib	: JSP 페이지에서 사용할 태그라이브러리 설정
    		include	: JSP 페이지의 특정 영역에 다른 페이지를 포함시킴.
    		
    		page 디렉티브 주요 설정
    		1. import : JSP에서 사용할 자바의 클래스 import 
     --%>
    
<!DOCTYPE html>
<%--DTD : 문서타입 정의 (문서 타입이 어떤 형식이다 라는 것을 정의 (버전등을 나타날때 사용한다.) ) --%>
	<%-- 
		HTML 기본 구조
		1. 태그(tag)
			- < 와 > 사이에 오는 단어 및 문자 를 "tag"라 한다!
			- HTML 구조 및 의미를 브라우저에 전달.
			- "속성"을 가질 수 있음.
				예 : <태그종류 속성이름="속성값"></태그종류>
					<input type="text"/>
			- 기본적으로, 시작태그와 종료태그가 짝을 이룬다.
			
		2. 엘리먼트(Element)	
			- 시작태그 + 내용 + 종료태그 => (전체를 말하는 묶음)
			- 예 : <h2>나의 첫  JSP</h2> (전체를 가르키는 용어)
		
	 --%>
	 
<html>	<%-- 브라우저에게 HTML 문서임을 알림 --%>
  <head> <%-- HTML 머릿글 : 문서 자체에 대한 설정, 설명 등을 기술 --%>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <%-- 
    	<meta> : 브라우저에 나타나지 않는 일반 정보
    			 (예 : 검색 키워드 지정, 제작자 명 등)
    --%>
  </head>
  <body>
  		<%-- <body> : 문서의 내용 --%>
    
  </body>
</html>

	<%-- 
		웹 브라우저 URL에서 페이지에 접근하는 형식
		웹서버IP:http접속포트/프로젝트이름/파일이름
		- 프로젝트 이름이 ROOT인 경우 -> (프로젝트이름 생략 가능)
		- 파일 이름이 web.xml에 설정된 경우 -> (파일이름 생략 가능)
			(예 : 현재 index.html/xml/jsp등등/ 으로 설정되어 있음)
	--%>