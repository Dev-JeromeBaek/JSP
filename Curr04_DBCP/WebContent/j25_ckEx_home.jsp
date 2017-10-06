<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<h2>home 화면</h2>
	<%
		Cookie[] cks = request.getCookies();
		boolean show = true;
		if(cks != null) {
			for(Cookie each : cks)
			{
				if(each.getName().equals("no7")) {
					show = false;
					break;
				}
			}
		}
		if(show) {
	%>
	
	<script type="text/javascript">
		var url = "/Curr04_DBCP/j25_popView.jsp";
		var popname = "pop";
		var size = "width=300, height=400";
		window.open(url, popname, size);
	</script>
	<%
		}
	%>
  </body>
</html>