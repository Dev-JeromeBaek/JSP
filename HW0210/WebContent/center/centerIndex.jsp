<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
 	<%
		if(session.getAttribute("tLogin") != null)
		{
			teaDTO dto = (teaDTO)session.getAttribute("tLogin");
	%>
		<h1>centerIndex</h1>
	<%
			Cookie[] cks = request.getCookies();
			boolean show = true;
			if(cks != null) {
				for(Cookie each : cks)
				{
					if(each.getName().equals("hold60")) {
						show = false;
						break;
					}
				}
			}
			if(show) {
	%>
	<script type="text/javascript">
		var url = "/HW0210/popup.jsp?"
				+ "thak=<%= dto.getThak() %>"
				+ "&tban=<%= dto.getTban() %>";
		var popname = "pop";
		var size = "width=500, height=600, left=400, top=200";
		window.open(url, popname, size);
	</script>
	<%
			}
		} else {
	%>
		<h3>로그인 후 이용 가능합니다.</h3>
	<%
		}
	%>
	
  </body>
</html>