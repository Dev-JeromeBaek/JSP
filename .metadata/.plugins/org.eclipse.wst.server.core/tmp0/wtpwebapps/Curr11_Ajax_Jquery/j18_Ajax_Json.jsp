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
<!--     <script type="text/javascript" -->
<!--     	src=> -->
<!--     </script> -->
  </head>
  <body>
  	
  	<input type="button" value="JSON정보 가져오기" 
  			onclick="showData()">
  	<script type="text/javascript">
  	
  		function showData() {
  			sendRequest("/Curr11_Ajax_Jquery/j18_JsonData.jsp"
  							, null, callback, "get");
  		}
  		
  		function callback() {
			if(httpRequest.readyState == 4) {
				if(httpRequest.status == 200) {
					
					var rcvJson = httpRequest.responseText;
					alert("rcvJson\n" + rcvJson);
					
					var parseData = JSON.parse(rcvJson);
// 					- JSON.parse() : 
// 								JSON형식의 String정보를 객체로 변환
// 							(단, 이름과 값 모두에 "" 필요/숫자는 무방)

					if(parseData.info == "peo") {
						var peoList = parseData.data.peoInfo;
						
						for(var i=0; i<peoList.length; i++) {
							alert(peoList[i].name + ", "
									+ peoList[i].age);
						}
						
					}
					
				} else {
					alert("*** 실패" + httpRequest.status);
				}
			}
		}
  	
  	</script>
  	
  	<h3>스크립트 객체 정보를 JSON형식의 String으로 변환</h3>
  	<input type="button" value="JSON으로 변환"
  			onclick="useJSON()">
  	<script type="text/javascript">
  		var pp = new Object();
  		pp.name = "둘리";
  		pp.age = 10;
  		function useJSON() {
  			var json = JSON.stringify(pp);
  			alert(json);
  		}
  	
  	</script>
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  </body>
</html>