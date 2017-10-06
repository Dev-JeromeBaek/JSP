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
		src="/Curr11_Ajax_Jquery/files/박환희5.png"
		style="width: 300px; height: 200px;">
	<hr>
	
	<button id="up1">slide-up</button>
	<script type="text/javascript">
		$("#up1").click(
			function() {
				$("img").slideUp(2000);
			}	
		);
	</script>
	
	<button id="down1">slide-down</button>
	<script type="text/javascript">
		$("#down1").click(
			function() {
				$("img").slideDown(2000);
			}	
		);
	</script>
	
	<button id="st">slide-Toggle</button>
	<script type="text/javascript">
		$("#st").click(
			function() {
				$("img").slideToggle(2000);
			}	
		);
	</script>
  </body>
</html>