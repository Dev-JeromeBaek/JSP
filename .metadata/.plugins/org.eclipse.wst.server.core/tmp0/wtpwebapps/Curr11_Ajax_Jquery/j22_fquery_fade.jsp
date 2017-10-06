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
	<%-- --%>
	<%-- --%>
	<%-- --%>
	<button id="fadeOut">희미해짐 && 사라짐</button>
	<script type="text/javascript">
		$("#fadeOut").click(
			function() {
				$("img").fadeOut(2000);
			}	
		);
	</script>
	<%-- --%>
	<%-- --%>
	<%-- --%>
	<%-- --%>
	<button id="fadeIn">뚜렷해짐 && 보이기</button>
	<script type="text/javascript">
	$("#fadeIn").click(
			function() {
				$("img").fadeIn(2000);
			}	
		);
	</script>
	<%-- --%>
	<%-- --%>
	<%-- --%>
	<%-- --%>
	<h2>attribute를 이용한 제어</h2>
	<button class="fadeTo" op="0">투명도 0</button>
	<button class="fadeTo" op="0.3">투명도 0.3</button>
	<button class="fadeTo" op="0.7">투명도 0.7</button>
	<button class="fadeTo" op="1.0">투명도 1.0</button>
	<script type="text/javascript">
		$(".fadeTo").click(
			function() {
				var rcvOpacity = $(this).attr("op");	// attr : .getAttribute();
				$("img").fadeTo("fast", rcvOpacity);
			}	
		);
	</script>
	
	
  </body>
</html>