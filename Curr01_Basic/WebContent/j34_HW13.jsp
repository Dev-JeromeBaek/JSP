<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    
    <script type="text/javascript">
    	
    	function goHome() {
    		document.frm.action = "/Curr01_Basic/j34_HW11.jsp";
    		document.frm.method = "post";
    		document.frm.submit();
    	}
    	
    	function score() {
    		document.frm.action = "/Curr01_Basic/j34_HW12.jsp";
    		document.frm.method = "post";
    		document.frm.submit();
    	}
    
    </script>
  </head>
  <body>
	
	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String math = request.getParameter("math");
		String total = request.getParameter("total");
		String avg = request.getParameter("avg");
		String result = request.getParameter("result");
	%>
  
  	<form name="frm" style="width: 300px;  margin-left: 400px; margin-top: 100px;">
		<fieldset>
		<legend style="font-size: 20px; text-align: center;">결과 조회 페이지</legend>
		<div style="text-align: center; ">
			<font color="red">성적 결과 : <%= result %></font>
		</div>
		<div style="margin-left: 40px; margin-top: 15px;">
				<input type="hidden" name="name" value="<%= name %>">
				<input type="hidden" name="kor" value="<%= kor %>">
				<input type="hidden" name="eng" value="<%= eng %>">
				<input type="hidden" name="math" value="<%= math %>">
				<input type="hidden" name="total" value="<%= total %>">
				<input type="hidden" name="avg" value="<%= avg %>">
					
				<input type="button" value="입력 Page"
						onclick="javascript:goHome()">&nbsp;&nbsp;&nbsp;
				<input type="button" value="성적 Page"
						onclick="javascript:score()">
		</div>
		</fieldset>
	</form>
  </body>
</html>