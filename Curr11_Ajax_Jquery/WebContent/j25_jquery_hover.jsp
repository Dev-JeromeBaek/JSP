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
	<div class="a" style="background: red"></div>
	<div class="a" style="background: black;"></div>
	<div class="a" style="background: blue;"></div>
	<div class="a" style="background: gray;"></div>
	<div class="a" style="background: lime;"></div>
	<div class="a" style="background: green;"></div>
	<div class="a" style="background: orange;"></div>
	
	<style>
		.a {
			width: 40px;
			height: 50px;
			overflow: hidden;
		}
	</style>
	<script type="text/javascript">
// 		$(".a").hover(
// 			function() {
// 				alert("마우스가 올려짐");
// 			}	
// 		);
		$(".a").hover(
			function() {		
				//앞부분은 끝낼건지 안끝낼건지/뒷부분은 끝까지 수행하고 다음작업을 진행할건지..
				$(this).stop(true, false)
						.animate({width: "300px"}, 200);
			},
			function() {
				$(this).stop(true, false)
						.animate({width: "40px"}, 200);
			}
	);
	
	</script>
  </body>
</html>