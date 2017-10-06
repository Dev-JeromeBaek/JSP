<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    
    <%-- 
	[브라우저상에서 임시파일 갱신(동기화)를 위한 작업!]
    <c:set var="httpRequest_js" value="/Curr11_Ajax_Jquery/files_js/httpRequest.js"></c:url>
    <script type="text/javascript" src="${ httpRequest_js }"></script>
    --%>
	
    <c:set var="httpRequest_js" 
    		value="/Curr11_Ajax_Jquery/files_js/httpRequest.js"/>
    
    <script type="text/javascript" 
    	src="${ httpRequest_js }">
    </script>
    
  </head>
  <body>
	
	<a onclick="jstest()">js파일 테스트</a>
	
  </body>
</html>