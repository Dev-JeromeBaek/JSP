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
	<h2>1. JavaScript Event함수 이용</h2>
	
	<p id="aaa">알림창보기</p>
<!-- 	<p id="naver">goNaver</p> -->

	<input type="text" name="naver">
	<input type="image" src="./files/search1.png" id="naver">
	
	<script type="text/javascript">
		var target1 = document.getElementById("aaa");
		var target2 = document.getElementById("naver");
		
		if(target1.addEventListener) {	// InertnetExplore 브라우저 계열에서 사용하는 Listner명령,
			target1.addEventListener("click", showAlert);
		} else {
			target1.attachEvent("onclick", showAlert());
		}
		
		if(target2.addEventListener) {
			target2.addEventListener("click", goNaver);
		} else {
			alert("잘못되었소")
		}
		
		function showAlert() {
			alert("알림창입니다.");
		}
		
		function goNaver() {
			location.href="http://www.naver.com";
		}
	</script>
	<hr>
	
	<h2>2. JQuery 이용(태그 지정 && click)</h2>
	<%--
		js파일 다운로드 위치 : jquery.com -> download
		url 이용 시 : code.jquery.com
		<script src="https://code.jquery.com/jquery파일이름">
		</script>
	--%>
	<div id="bbb">알림창보기</div>
	<script type="text/javascript">
		$("div").click(
			function() {
				alert("알림창 @ jquery");
			}		
		);
			
	</script>
	<hr>
	
	<h2>3. Jquery (id 지정 && click)</h2>
	<span id="ccc">알림창보기</span>
	<script type="text/javascript">
		$("#ccc").click(
			function() {
				alert("ccc 알림");
			}		
		);
	</script>
	<hr>
	
	<h2>4. Jquery (class 지정 && click)</h2>
	
	<span class="ddd">알림창보기</span>
	
	<input type="text" name="aa" class="aa">
	<script type="text/javascript">
		$(".ddd").click(
			function() {
				alert("ddd 알림");
			}
		);
		$(".aa").click(
			function() {
				alert("aa 알림");
			}
				
		);
	
	</script>
	
	
	
	
	
	
	
	
	
	
	
  </body>
</html>