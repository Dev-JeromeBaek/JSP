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
	<style>
		.a {
			margin-bottom: 50px;
			height: 50px;
			width: 50px;
			position: relative;
			background: red;
		}
	</style>
	
	<h2>1. stop(true, true) : 
			정지(있음), 현재 명령완료여부(완료상태로 바로이동 후 정지)</h2>
	<a id="start1">시작</a>
	<a id="stop1">정지실행</a>
	<div id="box1" class="a"></div>
	<script type="text/javascript">
		$("#start1").click(
			function() {
				$("#box1").animate({left: 500}<%--, 1000--%>)
							.animate({top: 10, height: 100, width: 100}<%--, 1000--%>)
							.slideUp(<%--1000--%>)
							.slideDown(<%--1000--%>)
							.animate({left: 0}<%--, 1000--%>)
							.animate({height: 50, width: 50}<%--, 1000--%>);
				return false;
			}
		);
		$("#stop1").click(
			function() {
				$("#box1").stop(true, true);	// 명령 끝쪽으로 바로 이동해서 완료시킨다!
				return false;
			}	
		);
	</script>
	
	============================================================
	
	<h2>2. stop(true, false) : 정지?, 현재 명령완료여부?
			정지(있음), 현재 명령완료여부(현재 명령 진행상황 중 정지 후, 
									정지된 명령 마저 실행 후,
									 정지했던 명령부터 다시 진행)</h2>
	<a id="start2">시작</a>
	<a id="stop2">정지실행</a>
	<div id="box2" class="a"></div>
	<script type="text/javascript">
		$("#start2").click(
			function() {
				$("#box2").animate({left: 500}, 500)
							.animate({top: 10, height: 100, width: 100}, 500)
							.slideUp(500)
							.slideDown(500)
							.animate({left: 0}, 500)
							.animate({height: 50, width: 50}, 500);
				return false;
			}
		);
		$("#stop2").click(
			function() {
				$("#box2").stop(true, false);	// 명령 끝쪽으로 바로 이동해서 완료시킨다!
				return false;
			}	
		);
	</script>
	
	=====================================================
	
	<h2>3. stop(false, true) : 정지?, 현재 명령완료여부?
			정지(없음), 현재 명령완료여부(현재 진행중인 명령 완료시점으로 바로이동)</h2>
	
	<a id="start3">시작</a>
	<a id="stop3">정지실행</a>
	<div id="box3" class="a"></div>
	<script type="text/javascript">
		$("#start3").click(
			function() {
				$("#box3").animate({left: 500}, 2000)
							.animate({top: 10, height: 100, width: 100}, 2000)
							.slideUp(2000)
							.slideDown(2000)
							.animate({left: 0}, 2000)
							.animate({height: 50, width: 50}, 2000);
				return false;
			}
		);
		$("#stop3").click(
			function() {
				$("#box3").stop(false, true);	// 명령 끝쪽으로 바로 이동해서 완료시킨다!
				return false;
			}	
		);
	</script>
	
	============================================================
	
	<h2>4. stop(false, false) : 정지?, 현재 명령완료여부?</h2>
	
	<a id="start4">시작</a>
	<a id="stop4">정지실행</a>
	<div id="box4" class="a"></div>
	<script type="text/javascript">
		$("#start4").click(
			function() {
				$("#box4").animate({left: 500}, 2000)
							.animate({top: 10, height: 100, width: 100}, 2000)
							.slideUp(2000)
							.slideDown(2000)
							.animate({left: 0}, 2000)
							.animate({height: 50, width: 50}, 2000);
				return false;
			}
		);
		$("#stop4").click(
			function() {
				$("#box4").stop(false, true);	// 명령 끝쪽으로 바로 이동해서 완료시킨다!
				return false;
			}	
		);
	</script>
	
	
	
  </body>
</html>