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
	<img alt="" 
		src="/Curr11_Ajax_Jquery/files/박환희4.png"
		style="width: 300px; height: 200px;">
	<hr>
		
	<button id="hide1">숨기기1</button>
	<button id="show1">띄우기1</button>
	<script type="text/javascript">
	
		$("#hide1").click(
			function() {
				$("img").hide();
			}	
		);
		
		$("#show1").click(
				function() {
					$("img").show();
				}	
			);
	</script>
	<button id="hide2">숨기기2(시간2초)</button>
	<script type="text/javascript">
		$("#hide2").click(
			function() {
				$("img").hide(2000);	// 1/1000초 단위
				// 숨기는데 걸리는 시간!!!!!
			}	
		);
	</script>
	<button id="hide3">숨기기3(시간2초 및 다른 명령 추가)</button>
	<script type="text/javascript">
		$("#hide3").click(
			function() {
				$("img").hide(2000, 
							function(){
								$("img").show(2000);
							}
				)
			}	
		);
	</script>
	<hr>
	
	<button id="toggle">보기/숨기기</button>
	<script type="text/javascript">
		$("#toggle").click(
			function() {
				$("img").toggle(2000);
			}	
		);
	</script>
	
  </body>
</html>