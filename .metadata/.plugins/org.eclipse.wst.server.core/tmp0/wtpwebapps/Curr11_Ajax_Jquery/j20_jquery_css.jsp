<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
	<c:set var="min_js" 
    		value="/Curr11_Ajax_Jquery/files_js/jquery-3.1.1.min.js"/>
    <script type="text/javascript"
    	src="${ min_js }">
    </script>
  </head>
  <body>
  	
  	<%--
  	<script type="text/javascript">
  		alert("테스트 - 페이지 로딩 됨");
//   	# : 현재페이지 지정 - 페이지 로딩 없음
// 		? : 현재페이지 지정 - 페이지 로딩 있음
  	</script>
  	--%>
  	<style>
  		#aaa {
  			width: 100px;
  			height: 100px;
  			background-color: black;
  		}
	</style>
	<div id="aaa"></div>
<!-- 	<a href="#data=aa"></a> -->
<!-- 	<a href="?data=aa">파란색으로</a> -->
	<a href="#">빨간색으로</a>
	<div id="aa">파란색으로</div>
	<script type="text/javascript">
		$("#aa").click(
			function() {
				$("#aaa").css("background-color", "blue");
				$(this).css("background-color", "green");
// 				=> this는 click이 되는 id가 aaa인 대상을 지칭
			}	
		);
		$("a").click(
			function() {
				$("#aaa").css("background-color", "red");
				$(this).css("background-color", "yellow");
			}	
		);
	</script>
	<hr>
	<h2>2. opacity : 투명도 변경(1->0.3)</h2>
	<div id="bbb">투명도변경</div>
	<style>
		#bbb {
			color : red;
			opacity: 1;
		}
	</style>
	<script type="text/javascript">
		$("#bbb").click(
			function() {
				$(this).css("opacity", "0.3");
			}	
		);
		
	</script>
	<hr>
	
	<h2>3. display: 보이기/숨기기("" -> none)</h2>
	<div id="ccc">display변경(숨기기)</div>
	<script type="text/javascript">
		var pp = 0;
		$("#ccc").click(
			function() {
				$(this).css("display", "none");
			}
		);
	</script>
	<hr>
	
	<h2>4. 텍스트 입력</h2>
	<button id="ddd">text입력</button>
	<span id="ss"></span>
	<script type="text/javascript">
		$("button#ddd").click(
			function() {
				$("span#ss").text("입력하고 싶은 메시지");
			}	
		);
// 		$("태그이름#아이디").
	</script>
	
	
	
	
	
	
  </body>
</html>