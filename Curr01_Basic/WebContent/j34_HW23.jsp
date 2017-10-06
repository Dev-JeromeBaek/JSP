<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    
    function goHome() {
    	var frm = document.frm;
    	frm.action = "/Curr01_Basic/j34_HW21.jsp";
    	frm.method = "post";
    	frm.submit();
    }
    
    function score() {
    	var frm = document.frm;
    	frm.action = "/Curr01_Basic/j34_HW22.jsp";
    	frm.method = "post";
    	frm.submit();
    }
    
    </script>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		int total = kor + eng + math;
		double avg = total / 3.0;
		String result;
		if(avg >= 85)
		{
			result = "합격입니다.";
		} else {
			result = "불합격입니다.";
		}
		
  	%>
	<form name="frm">
		이름 : <%= name %>
		결과 : <%= result %>
		
		<p>
			<input type="hidden" name="name" value="<%= name %>">
			<input type="hidden" name="kor" value="<%= kor %>">
			<input type="hidden" name="eng" value="<%= eng %>">
			<input type="hidden" name="math" value="<%= math %>">
			<input type="button" value="입력화면 이동" 
					onclick="javascript:goHome()">
			<input type="button" value="성적산출 페이지 이동" 
					onclick="javascript:score()">
		</p>
		
	</form>
  </body>
</html>