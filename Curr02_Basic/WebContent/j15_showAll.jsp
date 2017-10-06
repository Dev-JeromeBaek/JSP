<%@page import="entity.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <%
    	String out_Msg = (String)request.getAttribute("out_Msg");
    	if(out_Msg != null)
    	{
    %>
    <script type="text/javascript">
    	alert("<%= out_Msg %>");
    </script>
    <%
    	}
    %>
    <style type="text/css">
    a:VISITED {
		text-decoration: none;
		color: red;
	}
	a:HOVER {
		text-decoration: none;
		color: red;
	}
	a:LINK {
		text-decoration: none;
		font-size: 20px;
		color: red;
	}
    </style>
    
  </head>
  <body>
	<%
		ArrayList<Student> listc = (ArrayList<Student>)request.getAttribute("listc");
	%>
	<table border="1" style="text-align: center; width: 300px;" >
		<tr>
			<td>번 호</td>
			<td>이 름</td>
		</tr>
	<%
		for(Student each : listc)
		{
	%>
		<tr>
			<td><a href="/Curr02_Basic/con?works=selectOne&view=showOne&num=<%= each.getNum() %>"><%= each.getNum() %></a></td>
			<td><%= each.getName() %></td>
		</tr>
	<%
		}
	%>
	</table>
  </body>
</html>