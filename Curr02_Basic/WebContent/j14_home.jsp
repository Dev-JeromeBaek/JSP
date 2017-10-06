<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    
    <style type="text/css">
    a:LINK{
    	text-decoration: none;
    	font-size: 20px;
    }
    a:VISITED {
		text-decoration: underline;
		color: red;
	}
	a:HOVER {
		color: blue;
	}
    </style>
    <%
    	String msg = (String)request.getAttribute("msg");
    	if(msg != null) {
    %>
    <script type="text/javascript">
    	alert("<%= msg %>");
    </script>
    <%
    	}
    %>
    
  </head>
  <body>
	<h2>home 화면</h2>
	
	<a href="/Curr02_Basic/s14">서블릿으로 이동하기(테스트용)</a>
	<hr>
	
	<a href="/Curr02_Basic/s14?works=move&view=insertForm">1. 인사 정보 입력</a> <br>
	
	<a href="/Curr02_Basic/s14?works=selectAll&view=showAll">2. 인사 정보 보기</a>
	<hr>
	
  </body>
</html>