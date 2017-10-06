<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%--
		Ajax : Asynchronous Javascript + XML
		- JSP : 요청(request) -> 서버에서 HTML 발송
				-> 페이지 변화 -> 새로운 HTML 노출
		- Ajax : 요청(XMLHttpRequest) 
				-> 서버에서 텍스트 또는 XML 발송
				-> 현재 페이지에 도착한 텍스트 내용을 추가
		이용방법		
	--%>
		<h2>Ajax 이용</h2>
		
		<input type="button" 
				value="다른 페이지의 내용 가져와서 alert으로 출력"
				onclick="getData()">
				
		<script type="text/javascript">
			var httpRequest = null;
			
			function getXMLHttpRequest() {
				if(window.ActiveXObject) {
					try {
						return new ActiveXObject("Msxml12.XMLHTTP");
					} catch(e) {
						try {
							return new ActiveXObject("Microsoft.XMLHTTP");
						} catch(e1) {
							return null;
						}
					}
				} else if(window.XMLHttpRequest) {
					return new XMLHttpRequest();
				} else {
					return null;
				} 
			}
// 			httprequest(XMLHttpRequest) 객체의 대표 함수
// 			- onreadystatechange :
// 				이벤트를 처리하는 핸들러 역할(callback 함수에서 구현)
// 			- open : 요청 정보 설정 메소드 - method와 url은 필수 요소
// 			- send : 요청을 지정한 url로 전송하는 명령

			function getData() {
// 				1. httpRequest 객체 획득
				httpRequest = getXMLHttpRequest();
				
// 				2. httpRequest 이벤트 리스너 설정
// 					- 다시 돌아온 httpRequest를 받아 처리할
// 						핸들러(callback)함수를 지정해야 함.
// 					- 데이터 수신 시 사용
				httpRequest.onreadystatechange = callback;
				
// 				3. 요청 작업 내용 설정 : method, url, 파라미터정보 등
				httpRequest.open("Get"
					, "/Curr11_Ajax_Jquery/j06_viewData.jsp?name=둘리"
					, true)
// 					- 비동기(true) / 동기(false) 방식 설정
// 						- 비동기 방식인 경우, (날려놓고 나몰라라 진행~ !!)
// 							send() 실행 후 기다리지 않고 다음 명령을 계속 실행
// 						- 동기 방식인 경우,
// 							서버와의 통신이 완전히 완료된 후 이후 명령 실행
				httpRequest.setRequestHeader(
					"Content-Type", "application/x-www-form-urlencoded"
				);
				
// 				4. httpRequest 발송
				httpRequest.send(null);
// 				=> post방식인 경우, 넘겨야 할 파라미터 입력
// 				=> get방식인 경우, null값
				alert("send() - 전송 완료");
				
			}
			
			function callback() {
			// 받을려고 대기하는 함수
				if(httpRequest.readyState == 4) {
// 					- readyState : XMLHttpRequest의 객체 상태 확인
// 					- 4 : 서버로부터의 응답 성공(전체 데이터 수신 성공)
					
					if(httpRequest.status == 200) {
// 						- status : 서버로부터 응답받은 http 상태 코드
// 						- 200 : 요청에 대한 서버의 처리한 작업이 성공적임
// 								(모든 작업이 순조로웠음을 의미)
// 						- 403 : 서버에 대한 접근 거부 (서버에서 안받겠다고 함)
// 						- 404 : URL에 지정된 대상 없음
// 						- 500 : 서버 작업 중 오류 발생

// 						[방법 1.]
						var rcvData = httpRequest.responseText;
						alert("도착한 데이터 : " + rcvData);
// 						- 서버로부터 응답된 데이터
// 						- responseText : 단순 텍스트
// 						- responseXML : XML 형식

// 						##참고##
// 						** 공백 제거 함수 : replace(/\s/g, "");
						var editData = rcvData.replace(/\s/g, "");
						alert(editData)
						
						
					} else {
						alert("실패 : " + httpRequest.status)
					}
				}	
			}
			
		</script>
  </body>
</html>