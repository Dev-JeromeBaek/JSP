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
	<hr>
	<a onclick="toController()">XML데이터 가져오기</a>
	
  </body>
  	
  	<script type="text/javascript">
  		
  		function toController() {
  			sendRequest("/Curr11_Ajax_Jquery/j14", null, callback, "get")
  		}
  		
  		function callback() {
  			if(httpRequest.readyState == 4) {
  				if(httpRequest.status == 200) {
  					
  					var rcvXML = httpRequest.responseXML;
  					alert(rcvXML);
  					
  					var peoList = rcvXML.getElementsByTagName("people");
  					var targetNode = document.getElementById("show");
  					
  					var msg ="";
  					for(var i=0; i<peoList.length; i++) {
  						var peoname = peoList[i].getAttribute("name");
  						var imgPath = peoList[i].getAttribute("img");
  						
  						msg += "이름 : " + peoname + ", " + "이미지 경로 : " + imgPath + "<br>";
  					}
  					targetNode.innerHTML = msg;
  					
  				} else {
  					alert("*** 실패" + httpRequest.status);
  				}
  			}
  		}
  		
  	</script>
</html>