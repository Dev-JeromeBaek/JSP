<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="entity.People" %>
    <%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>
  <body>
    <%
   	 	ArrayList<People> listc = new ArrayList();
		listc.add(new People("둘리", 10));
		listc.add(new People("도우너", 20));
		listc.add(new People("또치", 30));
		listc.add(new People("희동이", 40));
    %>
    <h2>인사 정보 보기</h2>
    
    <table border="3" style="text-align: center;">
    	<tr>
    		<td>이름</td>
    		<td>나이</td>
    	</tr>
    <%
    	for(People each : listc)
    	{
    %>
    	<tr>
    		<td><%= each.getName() %></td>
    		<td><%= each.getAge() %></td>
    	</tr>
    <%
    	}
    %>
    </table>
    
  </body>
</html>