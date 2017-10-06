<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="entity.People" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Attribute</title>
  </head>
  <body>
	<h2>getAttribute : 도착 페이지</h2>
	
	<%
		Object rcv = request.getAttribute("data");
		String data = (String)rcv;
		
		int n = (int)request.getAttribute("n");
		
		People peo = (People)request.getAttribute("peo");
		
		ArrayList<People> listc = (ArrayList<People>)request.getAttribute("listc");
		
	%>
	
	data : <%= data %> <br>
	n : <%= n %> <br>
	peo : <%= peo.getName() %>, <%= peo.getAge() %> <br>
	
	listc : <br>
	<%
		for(People each : listc)
		{
			out.print(each.getName() + each.getAge() + "<br>");
	%>
			<%= each.getName() %>, <%= each.getAge() %> <br>
	<%
		}
	%>
	 
  </body>
</html>