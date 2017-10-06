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
	<div id="pp"></div>
	<a>이동하기</a>
	
	<style>
		div {
			background: red;
			height: 100px;
			width: 100px;
			position: relative;
		}
	</style>
	<script type="text/javascript">
		$("a").click(
			function() {
// 				$("div").animate({방향지정: "+=400", 200});
				$("#pp").animate({left: "+=400"}, 200);
				$("#pp").animate({top: "+=400"}, 200);
				$("#pp").animate({left: "-=400"}, 200);
				$("#pp").animate({top: "-=400"}, 200);
			}	
		);
	</script>
  </body>
</html>