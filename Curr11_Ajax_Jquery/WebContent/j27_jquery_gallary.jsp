<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
	<c:set var="min_js" 
    		value="/Curr11_Ajax_Jquery/files_js/jquery-3.1.1.min.js"/>
   	<c:set var="ui_min_js"
   			value="/Curr11_Ajax_Jquery/files_js/jquery-ui.min.js"/>
    <script type="text/javascript"
    	src="${ min_js }">
    </script>
    <script type="text/javascript"
    	src="${ ui_min_js }">
    </script>
  </head>
  <body>
	<style>
		body {
			margin: 20px auto;
			width: 1000px;
			background: #191933;
		}
		.thumbs {
			width: 200px;
			margin-left: 100px;
			float: left;				/*@@@@@@@@@@@@@@*/
		}
		.thumbs img {
			width: 100px;
			height: 80px;
			border: solid 1px #ccc;
			padding: 5px;
			margin-bottom: 5px;
			opacity: 0.5;				/*투명도*/
		}
		.thumbs img:hover {
			border-color: red;
		}
		#large {
			width: 500px;
			height: 400px;
			border: solid 1px #ccc;		/**/
			padding: 5px;
			margin-left: 200px;
			overflow: hidden;			/*@@@@@@@@@@@@@@*/
		}
		#large img {
			width: 500px;
			height: 400px;
		}
	</style>
	
	<div class="thumbs">
		<a href="./files/박환희5.png">
			<img src="./files/박환희5.png">
		</a>
		<a href="./files/박환희1.png">
			<img src="./files/박환희1.png">
		</a>
		<a href="./files/박환희4.png">
			<img src="./files/박환희4.png">
		</a>
	</div>
	
	<div id="large">
		<img id="largeImg" src="">
	</div>
	
	<script type="text/javascript">
// 		$(".thumbs a") => class="thumbs"의 내부에 있는 a태그
		$(".thumbs a").hover(
			function() {
				$(this).find("img").css("opacity","1");
				var thisSrc = $(this).attr("href");
				$("#largeImg").attr("src", thisSrc);
			},
			function() {
				$(this).find("img").css("opacity", "0.5");
			}
		);
	
	</script>
  </body>
</html>