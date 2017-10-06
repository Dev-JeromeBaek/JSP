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
  <body>
	
	<div id="target"></div>
	
	<a onclick="javascript:showMsg()">메시지보기</a>
	
	<script type="text/javascript">
		function showMsg() {
// 			sendRequest(url, params, callback, method);
			sendRequest("/Curr11_Ajax_Jquery/j09_server_Data.jsp", 
							null, callback, "get");
		}
		
		function callback() {
			if(httpRequest.readyState == 4) {
				if(httpRequest.status == 200) {
					
					var target = document.getElementById("target");
					target.innerHTML = httpRequest.responseText;
					
				} else {
					alert("*** 실패");
				}
			}
		}
	</script>
	
  </body>
</html>