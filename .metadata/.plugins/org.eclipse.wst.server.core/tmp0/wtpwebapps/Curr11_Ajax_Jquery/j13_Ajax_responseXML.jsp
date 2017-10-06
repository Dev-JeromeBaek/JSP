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
  	
  	<table border="1" style="text-align: center; width: 400px;">
  		<tr>
  			<td id="imgArea" style="height: 250px;"></td>
  		</tr>
  		<tr>
  			<td><a onclick="showImg('둘리')">둘리</a></td>
  		</tr>
  		<tr>
  			<td><a onclick="showImg('도우너')">도우너</a></td>
  		</tr>
  		<tr>
  			<td><a onclick="showImg('마이콜')">마이콜</a></td>
  		</tr>
  	</table>
	
  </body>
  	<script type="text/javascript">
//   	[target : 함수 안에서 쓰려고 만든 변수]
  		var target = null;
  		
  		function showImg(peo) {
  			target = peo;
  			sendRequest("/Curr11_Ajax_Jquery/j13_XMLData.xml"
  					, null, callback, "get")
  		}
  		
  		
  		function callback() {
  			if(httpRequest.readyState == 4) {
  				if(httpRequest.status == 200) {
  					
  					var rcvXML = httpRequest.responseXML;
//   				alert("rcvXML : " + rcvXML);
  					
  					var peoDataList = 
  						rcvXML.getElementsByTagName("people");
  					
  					for(var i=0; i<peoDataList.length; i++) {
  						var peoname = 
  							peoDataList[i].getAttribute("name");
  						
//   					alert("name : " + name);
  						
  						if(peoname == target) {
  							var imgPath =
  								peoDataList[i].getAttribute("img");
  							
  							var targetNode = document.getElementById("imgArea");
  							
  							targetNode.innerHTML = 
  								"<img src='/Curr11_Ajax_Jquery/files/"
  								+ imgPath + "' style='width:400px; height:250px'/>";
  							break;
  						}
  						
  					}
  					
  				} else {
  					alert("*** 실패" + httpRequest.status);
  				}
  			}
  		}
  	</script>
</html>