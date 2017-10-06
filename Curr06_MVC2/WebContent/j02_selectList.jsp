<%@page import="dto.PeopleDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  <%
  	String msg = (String)request.getAttribute("msg");
  %>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	var scrMsg = "<%= msg %>";
    	if(scrMsg != "null") {
    		alert(scrMsg);
    	}
    </script>
  </head>
  <body>
	
	<h2>인사 정보 보기</h2>
	
	<%
		ArrayList<PeopleDTO> listc = (ArrayList)request.getAttribute("listc");
	%>
	
	<%
		if(listc != null)
			for(PeopleDTO each : listc)
			{
	%>
			<%= each.getNum() %>, <%= each.getName() %>, <%= each.getAge() %> <br>
	<%
			}
	%>
	
  </body>
</html>