<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<h2>path02.jsp</h2>
	
	<h3>절대 경로</h3>
	<a href="/Curr01_Basic/path01/path01.jsp">
		[상위 폴더로 이동]path01.jsp로 이동</a> <br>
	<a href="/Curr01_Basic/path01/path02/path022.jsp">
		[같은 폴더로 이동]path022.jsp로 이동</a> <br>
	<a href="/Curr01_Basic/path01/path02/path03/path03.jsp">
		[하위 폴더로 이동]path03.jsp로 이동</a> <br>
	
	<h3>상대 경로</h3>
	<a href="./path022.jsp"><%-- path022.jsp로 쓸 수도 있다. 하지만 ./가 정식경로 --%>
		[같은 폴더로 이동]path022.jsp로 이동</a> <br>
	<a href="../path01.jsp">
		[상위 폴더로 이동]path01.jsp로 이동</a> <br>
	<a href="./path03/path03.jsp"><%-- path03/path03.jsp로 쓸 수도 있다. 하지만 ./~~가 정식경로 --%>
		[하위 폴더로 이동]path03.jsp로 이동</a> <br>
	
	
  </body>
</html>