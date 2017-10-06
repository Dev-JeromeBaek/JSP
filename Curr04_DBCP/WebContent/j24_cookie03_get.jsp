<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<h2>클라이언트가 보내는 쿠키 정보를 서버에서 확인[기본경로]</h2>
	
	<%
		Cookie[] cks = request.getCookies();
		String msg = "";
		
		if(cks != null) // 항상 null체크를 해줘야해!!!!!! 없는데 뽑으면 에러!!
		{
			for(Cookie each : cks) 
			{
				String name = each.getName();
// 				String value = each.getValue();
				String value = URLDecoder.decode(each.getValue(), "UTF-8");
				msg += name + ">>>>>" + value + "\\n";	// alert에서 줄바꿈은 "\\n"
			}
		} else {
			msg = "전달되는 쿠키가 없습니다.";
		}
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href="/Curr04_DBCP/j24_cookie_home.jsp";
	</script>
  </body>
</html>