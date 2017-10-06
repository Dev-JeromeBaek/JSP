<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	var a = 100;
//     	=> var : variable (모든 변수의 공통적인 자료형)
// 		b = 20;
// 		c = "가나다";

		function myF() {
			alert("경고화면을 보여주는 alert(알림창,다이얼로그)");
		}
		function myF2() {
			alert("경고화면을 보여주는 alert2");
		} 
		
    </script>
  </head>
  <body>
  
	<h2>a태그의 onclick과 자바스크립트의 function : 전송페이지</h2>
	
	<a href="/Curr01_Basic/j31_scriptFunction02.jsp">
		0. a태그 href를 이용한 이동</a> <hr>
		
<%-- 	================================================================================== --%>
	
	<a onclick="javascript:go01()">1. 자바스크립트 funtion을 이용한 이동</a> <hr>
	<script type="text/javascript">
		function go01() {
			alert("a : " + a);
			location.href = "/Curr01 _Basic/j31_scriptFunction02.jsp";
		}
// 		location.href = "/Curr01_Basic/j31_scriptFunction02.jsp";
// 		스크립트가 최우선순위
// 		함수로 묶어놓지 않으면 바로 02페이지로 이동한다
	</script>
	
<%-- 	================================================================================== --%>
	
	<a onclick="javascript:go02('보내고 싶은 파라미터값', 10, 30)">
		2. function을 이용한 이동 및 문자열 데이터 전송</a> <hr>
		<%--
			자바스크립트 함수의 매개변수로 문자열을 보낼 때는 ''를 반드시 이용해야 함.
		--%>
	<script type="text/javascript">
		function go02(data1, data2, data3) {
			alert(data1 + 10);
			location.href = "/Curr01_Basic/j31_scriptFunction02.jsp?data1=" + data1 
					+ "&data2=" + data2
					+ "&data3=" + data3
					+ "&data4=" + (data2+data3);
		}
	</script>
	
<%-- 	================================================================================== --%>
	
	<a onclick="javascript:go02('10')">
		2-1. 매개변수 값 '10' 입력하기</a> <hr>
	
<%-- 	================================================================================== --%>
	
	<a onclick="javascript:go02(10)">
		2-2. 매개변수 값 10 입력하기</a> <hr>

<%-- 	================================================================================== --%>
		
	<a onclick="javascript:go02(30.23)">
		2-3. 매개변수 값 30.23 입력하기</a> <hr>
<%-- 	================================================================================== --%>
	<%
		String msg = "자바의 변수값";
		int nn = 10;
	%>
	<a onclick="javascript:go02('<%= msg%>')">
		3. 자바의 변수값을 스크립트 함수의 인자값에 입력</a> <hr>
	
	<a onclick="javascript:go02(<%= nn %>)">
		4. 자바의 변수값(String이 아닌 형태) 이용</a> <hr>
	
<%-- 	================================================================================== --%>
	
  </body>
</html>