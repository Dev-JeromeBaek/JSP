<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
	<c:set var="httpRequest_js" 
    		value="/Curr11_Ajax_Jquery/files_js/httpRequest.js"/>
    <script type="text/javascript"
    	src="${ httpRequest_js }">
    </script>
  </head>
  <body align="center">
	
	<div id="show"></div>
	<a onclick="toController()">데이터 가져오기</a>
	
  </body>
  	
  	<script type="text/javascript">
  	
  		function toController() {
  			sendRequest("/Curr11_Ajax_Jquery/j12", null, callback, "get");
  			
  			
  		}
  		
  		function callback() {
  			if(httpRequest.readyState == 4) {
  				if(httpRequest.status == 200) {
  					
  					var rcvData = httpRequest.responseText;
  					var target = document.getElementById("show");
  					
  					alert("rcvData : " + rcvData.replace(/\s/g, ""));
  					
//   				1. rcvData가 숫자형태인 경우
//   				target.innerHTML = 
//   					"<input type='button' value='확인' "
//   					+ "onclick='works(" + rcvData + ")'>";
  						
//   				2. rcvData가 문자형태인 경우 (\") : " ' \"~~\" ' "
  					target.innerHTML = 
  						"<input type='button' value ='확인' "
  						+ "onclick='works(\"" + rcvData.trim() + "\")'>";
//   				.trim() : 문자열의 빈공간을 제거시킨다!!!!!! 꼭 기억할것!!
  				} else {
  					alert("*** 실패");
  				}
  			}
  		}
  		
//   	[data가 들어올때 어떻게 들어오는지 확인하기 위한 함수]
  		function works(data) {
  			alert("works data : " + data);
  		}
  	</script>
  
</html>