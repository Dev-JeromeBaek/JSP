<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="UTF-8"> <title>Insert title here</title>
    <style type="text/css">
    
    a:VISITED {
		text-decoration: none;
		color: fuchsia;
	}
	a:LINK {
		text-decoration: none;
		color: red;
	}
	a:HOVER {
		 text-decoration: none;
		 color: green;
	}
    
    </style>
  </head>
  <body>
	<h2>path03.jsp</h2>
	
	<h3>절대 경로</h3>
	<a href="/Curr01_Basic/path01/path01.jsp">path01.jsp</a> <br>
	<a href="/Curr01_Basic/path01/path02/path03/path04/path04.jsp">path04.jsp</a> <br>
	
	<h3>상대 경로</h3>
	<a href="../../path01.jsp">path01.jsp</a> <br>
	<a href="./path04/path04.jsp">path04.jsp</a> <br>
	
  </body>
</html>