<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    
    <script type="text/javascript">
    function formGetRedirect() {
    	document.frmGet.action = "/Curr02_Basic/j12_quiz02.jsp";
    	document.frmGet.submit();
    }
    
    function formGetForward() {
    	document.frmGet.action = "/Curr02_Basic/j12_quiz03.jsp";
    	document.frmGet.submit();
    }
    
    function formPostRedirect() {
    	document.frmPost.action = "/Curr02_Basic/j12_quiz02.jsp";
    	document.frmPost.method = "post";
    	document.frmPost.submit();
    }
    
    function formPostForward() {
    	document.frmPost.action = "/Curr02_Basic/j12_quiz03.jsp";
    	document.frmPost.method = "post";
    	document.frmPost.submit();
    }
    </script>
  </head>
  <body>
	<%--
		문제 : JSP에서의 redirect/forward에 대한
				서블릿의 doGet/doPost 호출 결과 보기
				
		1. 작성 파일
			- 서블릿 : J12_Servlet (URL : /s12)
			- jsp : j12_quiz01 ~ 03
		
		2. 이동 방법
			1. a태그 이용
				quiz01 -> quiz02(redirect) -> 서블릿(무슨방식으로 오나??)
				quiz01 -> quiz03(forward) -> 서블릿(무슨방식으로 오나??)
			2. form && get 이용
				quiz01 -> quiz02(redirect) -> 서블릿(무슨방식으로 오나??)
				quiz01 -> quiz03(forward) -> 서블릿(무슨방식으로 오나??)
			3. form && post 이용
				quiz01 -> quiz02(redirect) -> 서블릿(무슨방식으로 오나??)
				quiz01 -> quiz03(forward) -> 서블릿(무슨방식으로 오나??)
	--%>
	
	<p><a href="/Curr02_Basic/j12_quiz02.jsp">a태그 이용 ( redirect )</a></p>
	<p><a href="/Curr02_Basic/j12_quiz03.jsp">a태그 이용 ( forward )</a></p>
	<br>
	<hr>
	<br>
	<form name="frmGet">
		<p><input type="button" value="formGet이용 ( redirect )" 
				onclick="formGetRedirect()"></p>
		<p><input type="button" value="formGet이용 ( forward )"
				onclick="formGetForward()"></p>
	</form>
	<br>
	<hr>
	<br>
	<form name="frmPost">
		<p><input type="button" value="formPost이용 ( redirect )" 
				onclick="formPostRedirect()"></p>
		<p><input type="button" value="formPost이용 ( forward )"
				onclick="formPostForward()"></p>
		<br>
	</form>
  </body>
</html>